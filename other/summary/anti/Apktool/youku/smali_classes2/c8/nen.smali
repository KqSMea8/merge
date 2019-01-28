.class public final Lc8/nen;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oen;->doDownloadLogin(Landroid/app/Activity;Lc8/Qdn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lc8/Cbp;

.field final synthetic val$mDownloadLoginListener:Lc8/Qdn;


# direct methods
.method constructor <init>(Lc8/Qdn;Lc8/Cbp;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lc8/nen;->val$mDownloadLoginListener:Lc8/Qdn;

    iput-object p2, p0, Lc8/nen;->val$dialog:Lc8/Cbp;

    iput-object p3, p0, Lc8/nen;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lc8/nen;->val$mDownloadLoginListener:Lc8/Qdn;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lc8/nen;->val$mDownloadLoginListener:Lc8/Qdn;

    invoke-interface {v0}, Lc8/Qdn;->doSomeThing()V

    .line 298
    :cond_0
    iget-object v0, p0, Lc8/nen;->val$dialog:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 299
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    iget-object v1, p0, Lc8/nen;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lc8/Xgn;->goLogin(Landroid/content/Context;)V

    .line 302
    return-void
.end method
