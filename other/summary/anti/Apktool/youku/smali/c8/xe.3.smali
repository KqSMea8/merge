.class public Lc8/xe;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lc8/Ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ke;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ke;


# direct methods
.method constructor <init>(Lc8/Ke;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ke;

    .prologue
    .line 1102
    iput-object p1, p0, Lc8/xe;->this$0:Lc8/Ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lc8/ef;)V
    .locals 3
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 1105
    iget-object v0, p0, Lc8/xe;->this$0:Lc8/Ke;

    invoke-virtual {p1}, Lc8/ef;->getAnimatedIntValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/Ke;->scrollTo(II)V

    .line 1106
    return-void
.end method
