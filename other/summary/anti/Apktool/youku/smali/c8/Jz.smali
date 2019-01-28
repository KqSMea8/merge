.class public Lc8/Jz;
.super Ljava/lang/Object;
.source "DefaultProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kz;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kz;


# direct methods
.method constructor <init>(Lc8/Kz;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Kz;

    .prologue
    .line 323
    iput-object p1, p0, Lc8/Jz;->this$0:Lc8/Kz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 331
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 334
    iget-object v0, p0, Lc8/Jz;->this$0:Lc8/Kz;

    invoke-static {v0}, Lc8/Kz;->access$000(Lc8/Kz;)V

    .line 335
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 325
    return-void
.end method
