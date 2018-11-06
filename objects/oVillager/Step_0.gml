switch mode {
	case VillagerMode.leaving:
		var nearestTree = FindNearest(targetResource);
		if (nearestTree == noone) {
			mode = VillagerMode.idle;
			break;
		}
		var hasArrived = MoveTowards(nearestTree, walkSpeed);
		if (hasArrived) {
			mode = VillagerMode.gatheringWood;
		}
		break;
	case VillagerMode.returning:
		var nearestVillage = FindNearest(oVillage);
		var hasArrived = MoveTowards(nearestVillage, walkSpeed);
		if (hasArrived) {
			mode = VillagerMode.depositing;
		}
		break;
	case VillagerMode.gatheringWood:
		var nearestTree = FindNearest(targetResource);
		if (nearestTree == noone) {
			mode = VillagerMode.idle;
		} else if (point_distance(x, y, nearestTree.x, nearestTree.y) < walkSpeed) {
			holding = Gather(nearestTree);
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
