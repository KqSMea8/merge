.class public abstract Lc8/Jvk;
.super Ljava/lang/Object;
.source "UnicomPhoneNumberCallBack.java"

# interfaces
.implements Lc8/Ivk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method

.method public abstract onGetPhoneNumber(Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;)V
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "successMessage"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method
