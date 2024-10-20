// 의존성이 강할 때 + 테스트가 필요한 경우
class FunctionChecks {
  bool checkIfEmpty(String text) {
    return text.trim().isEmpty;
  }
}

// static
// class FunctionChecks {
//   static bool checkIfEmpty(String text) {
//     return text.trim().isEmpty;
//   }
// }

// 파일 단위로 쪼갤 때 유리
// global
// bool checkIfEmpty(String text) {
//   return text.trim().isEmpty;
// }