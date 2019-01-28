.class public Lc8/Ve;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Lc8/cf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ef;->addUpdateListener(Lc8/Ze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ef;

.field final synthetic val$updateListener:Lc8/Ze;


# direct methods
.method constructor <init>(Lc8/ef;Lc8/Ze;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ef;

    .prologue
    .line 132
    iput-object p1, p0, Lc8/Ve;->this$0:Lc8/ef;

    iput-object p2, p0, Lc8/Ve;->val$updateListener:Lc8/Ze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lc8/Ve;->val$updateListener:Lc8/Ze;

    iget-object v1, p0, Lc8/Ve;->this$0:Lc8/ef;

    invoke-interface {v0, v1}, Lc8/Ze;->onAnimationUpdate(Lc8/ef;)V

    .line 136
    return-void
.end method
