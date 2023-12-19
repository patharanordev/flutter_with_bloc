enum DeviceDirtyCauses { jailbroken, indevelopermode }

class DeviceDirtyCausesDetail {
  String getDetail(DeviceDirtyCauses cause) {
    String detail = 'Unknown issue.';
    switch (cause) {
      case DeviceDirtyCauses.jailbroken:
        detail = 'This device is jailbroken.';
        break;
      case DeviceDirtyCauses.indevelopermode:
        detail = 'This device is in developer mode.';
        break;
      default:
        break;
    }

    return detail;
  }
}
