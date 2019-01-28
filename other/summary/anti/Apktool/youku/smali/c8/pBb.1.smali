.class public Lc8/pBb;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lc8/oBb;->getInstance()Lc8/oBb;

    move-result-object v0

    const-string/jumbo v1, "i"

    invoke-virtual {v0, v1}, Lc8/oBb;->add(Ljava/lang/String;)V

    .line 11
    return-void
.end method
