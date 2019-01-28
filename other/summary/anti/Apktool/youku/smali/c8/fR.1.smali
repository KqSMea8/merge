.class public Lc8/fR;
.super Ljava/lang/Object;
.source "SdkConfigUpdateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gR;->initSdkConfigResult(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$configUrl:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lc8/fR;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lc8/fR;->val$configUrl:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lc8/fR;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lc8/fR;->val$configUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/gR;->access$0(Landroid/content/Context;Ljava/lang/String;)Lc8/TQ;

    move-result-object v0

    invoke-static {v0}, Lc8/gR;->access$1(Lc8/TQ;)V

    .line 32
    invoke-static {}, Lc8/gR;->access$2()Lc8/TQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lc8/gR;->access$2()Lc8/TQ;

    move-result-object v0

    invoke-static {v0}, Lc8/gR;->access$3(Lc8/TQ;)V

    .line 35
    :cond_0
    return-void
.end method
