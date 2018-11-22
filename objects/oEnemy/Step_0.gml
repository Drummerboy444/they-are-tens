switch mode {
	case EnemyMode.movingToTarget:
		var potentialTarget = FindNearest([oVillage, oVillager, oLumberMill, oQuarry]);
		if (potentialTarget == noone) {
			mode = EnemyMode.idle;
			break;
		} else {
			target = potentialTarget
			MoveTowards(target, walkSpeed);
			break;
		}
	case EnemyMode.idle:
		break;
}