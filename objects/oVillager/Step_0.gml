switch mode {
	case VillagerMode.leaving:
		var nearestResource = FindNearest(targetSupply);
		if (nearestResource == noone) {
			mode = VillagerMode.idle;
			break;
		}
		var hasArrived = MoveTowards(nearestResource, walkSpeed);
		if (hasArrived) {
			mode = VillagerMode.gathering;
		}
		break;
	case VillagerMode.returning:
		var dropOffBuildings = GetDropOffBuildings(holding);
		var nearestDropOff = FindNearest(dropOffBuildings);
		var hasArrived = MoveTowards(nearestDropOff, walkSpeed);
		if (hasArrived) {
			mode = VillagerMode.depositing;
		}
		break;
	case VillagerMode.gathering:
		var nearestResource = FindNearest(targetSupply);
		if (nearestResource == noone) {
			mode = VillagerMode.idle;
		} else if (point_distance(x, y, nearestResource.x, nearestResource.y) < walkSpeed) {
			holding = Gather(nearestResource);
			mode = VillagerMode.returning;
		} else {
			mode = VillagerMode.leaving;
		}
		break;
	case VillagerMode.depositing:
		Deposit(holding);
		mode = VillagerMode.leaving;
		break;
	case VillagerMode.idle:
		break;
}
