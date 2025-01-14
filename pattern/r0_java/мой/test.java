public boolean isWerewolf(String target) {
        // write your code here
        String targetLC = target.toLowerCase();
        StringBuilder targetRev = new StringBuilder(targetLC);
        targetRev.reverse();

        if (targetRev == targetLC) {
        return true;
        }
        return false;
        }
