.class public Lc8/mhg;
.super Lc8/phg;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qhg;->a(Ljava/lang/String;Lc8/Dmg;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/Dmg;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lc8/qhg;


# direct methods
.method constructor <init>(Lc8/qhg;Landroid/app/Dialog;Lc8/Dmg;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lc8/mhg;->c:Lc8/qhg;

    iput-object p3, p0, Lc8/mhg;->a:Lc8/Dmg;

    iput-object p4, p0, Lc8/mhg;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lc8/phg;-><init>(Lc8/qhg;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lc8/mhg;->c:Lc8/qhg;

    invoke-virtual {v0}, Lc8/qhg;->a()V

    .line 535
    iget-object v0, p0, Lc8/mhg;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mhg;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lc8/mhg;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 538
    :cond_0
    iget-object v0, p0, Lc8/mhg;->a:Lc8/Dmg;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lc8/mhg;->a:Lc8/Dmg;

    iget-object v1, p0, Lc8/mhg;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lc8/Dmg;->onComplete(Ljava/lang/Object;)V

    .line 541
    :cond_1
    return-void
.end method
