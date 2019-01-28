.class public Lc8/We;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Lc8/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ef;->addListener(Lc8/Xe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ef;

.field final synthetic val$listener:Lc8/Xe;


# direct methods
.method constructor <init>(Lc8/ef;Lc8/Xe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ef;

    .prologue
    .line 145
    iput-object p1, p0, Lc8/We;->this$0:Lc8/ef;

    iput-object p2, p0, Lc8/We;->val$listener:Lc8/Xe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lc8/We;->val$listener:Lc8/Xe;

    iget-object v1, p0, Lc8/We;->this$0:Lc8/ef;

    invoke-interface {v0, v1}, Lc8/Xe;->onAnimationCancel(Lc8/ef;)V

    .line 159
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lc8/We;->val$listener:Lc8/Xe;

    iget-object v1, p0, Lc8/We;->this$0:Lc8/ef;

    invoke-interface {v0, v1}, Lc8/Xe;->onAnimationEnd(Lc8/ef;)V

    .line 154
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lc8/We;->val$listener:Lc8/Xe;

    iget-object v1, p0, Lc8/We;->this$0:Lc8/ef;

    invoke-interface {v0, v1}, Lc8/Xe;->onAnimationStart(Lc8/ef;)V

    .line 149
    return-void
.end method
