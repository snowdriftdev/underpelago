if (timer2 > 0) {
    timer2 -= 1;
} else {
  instance_destroy(Bone);
  instance_destroy(HitboxBone);
}