// To change colour of sprite if it's selected
image_index = selected ? 1 : 0;

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
		if (nearestDropOff != noone) {
			var hasArrived = MoveTowards(nearestDropOff, walkSpeed);
			if (hasArrived) {
				mode = VillagerMode.depositing;
			}
		}
		break;
	case VillagerMode.gathering:
		var nearestResource = FindNearest(targetSupply);
		if (nearestResource == noone) {
			mode = VillagerMode.idle;
			alarm_set(0, -1);
			doneGathering = false;
			gathering = false;
		} else if (point_distance(x, y, nearestResource.x, nearestResource.y) < walkSpeed) {
			if (!gathering) {
				alarm_set(0, gatherTime);
				doneGathering = false;
				gathering = true;
			} else if (doneGathering) {
				alarm_set(0, -1);
				gathering = false;
				doneGathering = false;
				holding = Gather(nearestResource);
				mode = VillagerMode.returning;
			}
		} else {
			alarm_set(0, -1);
			doneGathering = false;
			gathering = false;
			mode = VillagerMode.leaving;
		}
		break;
	case VillagerMode.depositing:
		Deposit(holding);
		mode = VillagerMode.leaving;
		break;
	case VillagerMode.idle:
		mode = VillagerMode.leaving;
		break;
}