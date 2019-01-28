.class public Lc8/Hac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lc8/Gac;


# direct methods
.method constructor <init>(Lc8/Gac;)V
    .locals 0

    iput-object p1, p0, Lc8/Hac;->a:Lc8/Gac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AlibcAddCartWidgetUI"

    const-string/jumbo v1, "add cart want hided"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Dac;->a(Lc8/Dac;Z)Z

    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0, v2}, Lc8/Dac;->a(Lc8/Dac;Lc8/MZb;)Lc8/MZb;

    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->f(Lc8/Dac;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->f(Lc8/Dac;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->f(Lc8/Dac;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string/jumbo v0, "want_view_gone"

    invoke-static {v0, v2}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->g(Lc8/Dac;)Lc8/Rac;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Hac;->a:Lc8/Gac;

    iget-object v0, v0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->g(Lc8/Dac;)Lc8/Rac;

    move-result-object v0

    invoke-interface {v0}, Lc8/Rac;->c()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
