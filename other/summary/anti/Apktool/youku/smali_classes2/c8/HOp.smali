.class public final Lc8/HOp;
.super Ljava/lang/Object;
.source "MtopSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IOp;->setMtopConfigListener(Lc8/iMp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$mtopConfigListener:Lc8/iMp;


# direct methods
.method constructor <init>(Lc8/iMp;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lc8/HOp;->val$mtopConfigListener:Lc8/iMp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lc8/HOp;->val$mtopConfigListener:Lc8/iMp;

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-static {v1}, Lc8/IOp;->access$000(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 289
    .local v0, "mtopConfig":Lc8/kOp;
    iget-object v1, v0, Lc8/kOp;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lc8/HOp;->val$mtopConfigListener:Lc8/iMp;

    iget-object v2, v0, Lc8/kOp;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lc8/iMp;->initConfig(Landroid/content/Context;)V

    .line 294
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_0
    return-void
.end method
