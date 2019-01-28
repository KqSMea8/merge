.class public final Lcom/alibaba/baichuan/android/auth/b;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "FAIL_BIZ_PARAM_ERROR"

    const-string/jumbo v1, "03"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_SYSTEM_ERROR"

    const-string/jumbo v1, "04"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "token\u8fc7\u671f"

    const-string/jumbo v1, "05"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_TOKEN_NOAUTH"

    const-string/jumbo v1, "06"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_APPKEY_IN_BLACKLIST"

    const-string/jumbo v1, "07"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_TOKEN_CANNOT_DECODE"

    const-string/jumbo v1, "08"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_APPKEY_ILLEGAL"

    const-string/jumbo v1, "09"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_UID_ILLEGAL"

    const-string/jumbo v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_DEVICEID_ILLEGAL"

    const-string/jumbo v1, "11"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_HINT_ILLEGAL"

    const-string/jumbo v1, "12"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_HINT_AND_TOKEN_ILLEGAL"

    const-string/jumbo v1, "13"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_TOKEN_ILLEGAL"

    const-string/jumbo v1, "14"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "FAIL_BIZ_API_ILLEGAL"

    const-string/jumbo v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/baichuan/android/auth/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
