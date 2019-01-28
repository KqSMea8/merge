.class public Lc8/Iac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/Dac;

.field private b:I

.field private c:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lc8/Dac;)V
    .locals 5

    iput-object p1, p0, Lc8/Iac;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->i(Lc8/Dac;)I

    move-result v0

    iput v0, p0, Lc8/Iac;->b:I

    invoke-static {p1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc8/Iac;->c:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-static {p1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "alibc_want_anim_adding_cart_logo_hide"

    const-string/jumbo v3, "anim"

    invoke-static {p1}, Lc8/Dac;->e(Lc8/Dac;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lc8/Iac;->c:Landroid/view/animation/Animation;

    iget-object v0, p0, Lc8/Iac;->c:Landroid/view/animation/Animation;

    new-instance v1, Lc8/Jac;

    invoke-direct {v1, p0, p1}, Lc8/Jac;-><init>(Lc8/Iac;Lc8/Dac;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lc8/Iac;)I
    .locals 1

    iget v0, p0, Lc8/Iac;->b:I

    return v0
.end method

.method static synthetic a(Lc8/Iac;I)I
    .locals 0

    iput p1, p0, Lc8/Iac;->b:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "AlibcAddCartWidgetUI"

    const-string/jumbo v1, "add cart anim"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/Iac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->c(Lc8/Dac;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lc8/Iac;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
