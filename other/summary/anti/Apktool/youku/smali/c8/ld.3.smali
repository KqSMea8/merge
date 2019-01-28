.class public Lc8/ld;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lc8/Ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/od;->animateScrim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/od;


# direct methods
.method constructor <init>(Lc8/od;)V
    .locals 0
    .param p1, "this$0"    # Lc8/od;

    .prologue
    .line 604
    iput-object p1, p0, Lc8/ld;->this$0:Lc8/od;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lc8/ef;)V
    .locals 2
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 607
    iget-object v0, p0, Lc8/ld;->this$0:Lc8/od;

    invoke-virtual {p1}, Lc8/ef;->getAnimatedIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/od;->setScrimAlpha(I)V

    .line 608
    return-void
.end method
