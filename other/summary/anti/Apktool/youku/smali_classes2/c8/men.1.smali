.class public final Lc8/men;
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
.field final synthetic val$dialog:Lc8/Cbp;

.field final synthetic val$mDownloadLoginListener:Lc8/Qdn;


# direct methods
.method constructor <init>(Lc8/Cbp;Lc8/Qdn;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lc8/men;->val$dialog:Lc8/Cbp;

    iput-object p2, p0, Lc8/men;->val$mDownloadLoginListener:Lc8/Qdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lc8/men;->val$dialog:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 286
    iget-object v0, p0, Lc8/men;->val$mDownloadLoginListener:Lc8/Qdn;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lc8/men;->val$mDownloadLoginListener:Lc8/Qdn;

    invoke-interface {v0}, Lc8/Qdn;->doDownload()V

    .line 289
    :cond_0
    return-void
.end method
