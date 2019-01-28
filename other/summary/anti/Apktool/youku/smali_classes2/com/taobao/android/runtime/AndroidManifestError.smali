.class public Lcom/taobao/android/runtime/AndroidManifestError;
.super Ljava/lang/Error;
.source "AndroidManifestError.java"


# static fields
.field private static final serialVersionUID:J = 0x52e49d4050dd6ca8L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
