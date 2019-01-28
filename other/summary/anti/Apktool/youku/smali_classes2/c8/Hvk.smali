.class public Lc8/Hvk;
.super Ljava/lang/Object;
.source "MobileNetCallBack.java"

# interfaces
.implements Lc8/Ivk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBreak(Ljava/lang/String;)V
    .locals 0
    .param p1, "breakInfo"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public onPcidSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "pcid"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "successMessage"    # Ljava/lang/String;

    .prologue
    .line 12
    return-void
.end method
