.class public final Lc8/iN;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jN;->asyncBindService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-static {}, Lc8/jN;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {v3}, Lc8/jN;->access$102(Z)Z

    .line 135
    const-string/jumbo v0, "anet.RemoteGetter"

    const-string/jumbo v1, "binding service timeout. reset status!"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_0
    return-void
.end method
