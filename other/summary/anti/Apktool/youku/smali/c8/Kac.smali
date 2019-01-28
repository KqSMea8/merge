.class public Lc8/Kac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/Dac;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Dac;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc8/Kac;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->b(Lc8/Dac;)V

    iget-object v0, p0, Lc8/Kac;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->l(Lc8/Dac;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->f(Lc8/Dac;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->h(Lc8/Dac;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->h(Lc8/Dac;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v1}, Lc8/Dac;->m(Lc8/Dac;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->f(Lc8/Dac;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string/jumbo v0, "want_view_visible"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc8/Kac;->a:Lc8/Dac;

    iget-object v1, p0, Lc8/Kac;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/Dac;->a(Lc8/Dac;Ljava/lang/String;)V

    goto :goto_0
.end method
