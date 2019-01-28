.class public Lc8/Jac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lc8/Dac;

.field final synthetic b:Lc8/Iac;


# direct methods
.method constructor <init>(Lc8/Iac;Lc8/Dac;)V
    .locals 0

    iput-object p1, p0, Lc8/Jac;->b:Lc8/Iac;

    iput-object p2, p0, Lc8/Jac;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v0, v0, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    invoke-static {v0}, Lc8/Iac;->a(Lc8/Iac;)I

    move-result v0

    iget-object v1, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, v1, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->i(Lc8/Dac;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, v1, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->j(Lc8/Dac;)I

    move-result v1

    invoke-static {v0, v1}, Lc8/Iac;->a(Lc8/Iac;I)I

    :goto_1
    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v0, v0, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->c(Lc8/Dac;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, v1, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v2, v2, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v2}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "alibc_want_anim_adding_cart_logo_show"

    const-string/jumbo v4, "anim"

    iget-object v5, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v5, v5, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v5}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v0, v0, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->c(Lc8/Dac;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, v1, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lc8/Jac;->b:Lc8/Iac;

    invoke-static {v2}, Lc8/Iac;->a(Lc8/Iac;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v0, v0, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->f(Lc8/Dac;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, v1, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->k(Lc8/Dac;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, p0, Lc8/Jac;->b:Lc8/Iac;

    iget-object v1, v1, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->i(Lc8/Dac;)I

    move-result v1

    invoke-static {v0, v1}, Lc8/Iac;->a(Lc8/Iac;I)I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
