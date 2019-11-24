void main() {
  LearningInterfaces c = new LearningInterfaces();
  print("The gross total : ${c.ret_tot()}");
  print("Discount :${c.ret_dis()}");
}

class Calculate_Total {
  // Unlike Java or any modern OOPs language we don't have a separate keyword for interfaces
  int ret_tot() {}
}

class Calculate_Discount {
  int ret_dis() {}
}

class LearningInterfaces implements Calculate_Total, Calculate_Discount {
  int ret_tot() {
    return 1000;
  }

  int ret_dis() {
    return 50;
  }
}
