.class public Lc8/ohg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lc8/qhg;Lc8/Dmg;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lc8/ohg;->c:Lc8/qhg;

    iput-object p2, p0, Lc8/ohg;->a:Lc8/Dmg;

    iput-object p3, p0, Lc8/ohg;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lc8/ohg;->a:Lc8/Dmg;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lc8/ohg;->a:Lc8/Dmg;

    iget-object v1, p0, Lc8/ohg;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lc8/Dmg;->onComplete(Ljava/lang/Object;)V

    .line 573
    :cond_0
    return-void
.end method
