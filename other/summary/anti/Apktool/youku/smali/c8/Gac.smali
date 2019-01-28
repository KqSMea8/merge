.class public Lc8/Gac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lc8/Dac;


# direct methods
.method constructor <init>(Lc8/Dac;)V
    .locals 0

    iput-object p1, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v0, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "alibc_want_anim_hide_logo"

    const-string/jumbo v3, "anim"

    iget-object v4, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v4}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lc8/Hac;

    invoke-direct {v1, p0}, Lc8/Hac;-><init>(Lc8/Gac;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->h(Lc8/Dac;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->h(Lc8/Dac;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->c(Lc8/Dac;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->c(Lc8/Dac;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->d(Lc8/Dac;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Gac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->d(Lc8/Dac;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    return-void
.end method
