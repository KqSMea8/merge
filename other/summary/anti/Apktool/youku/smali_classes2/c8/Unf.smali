.class public final Lc8/Unf;
.super Ljava/lang/Object;
.source "DeeplinkCompoment.java"

# interfaces
.implements Lc8/Lnf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Wnf;->executeDeeplink(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/Unf;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/Wnf;->setConfigFinishResult(Z)V

    .line 191
    sget-object v0, Lc8/gpf;->instance:Lc8/gpf;

    new-instance v1, Lc8/Vnf;

    iget-object v2, p0, Lc8/Unf;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/Vnf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/gpf;->postNonUIThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Wnf;->setConfigFinishResult(Z)V

    .line 185
    sget-object v0, Lc8/gpf;->instance:Lc8/gpf;

    new-instance v1, Lc8/Vnf;

    iget-object v2, p0, Lc8/Unf;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/Vnf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/gpf;->postNonUIThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
