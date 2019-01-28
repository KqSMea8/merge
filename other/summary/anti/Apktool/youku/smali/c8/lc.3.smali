.class public Lc8/lc;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Lc8/Ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oc;->animateOffsetWithDuration(Lc8/yd;Lc8/tc;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oc;

.field final synthetic val$child:Lc8/tc;

.field final synthetic val$coordinatorLayout:Lc8/yd;


# direct methods
.method constructor <init>(Lc8/oc;Lc8/yd;Lc8/tc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oc;

    .prologue
    .line 959
    iput-object p1, p0, Lc8/lc;->this$0:Lc8/oc;

    iput-object p2, p0, Lc8/lc;->val$coordinatorLayout:Lc8/yd;

    iput-object p3, p0, Lc8/lc;->val$child:Lc8/tc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lc8/ef;)V
    .locals 4
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 962
    iget-object v0, p0, Lc8/lc;->this$0:Lc8/oc;

    iget-object v1, p0, Lc8/lc;->val$coordinatorLayout:Lc8/yd;

    iget-object v2, p0, Lc8/lc;->val$child:Lc8/tc;

    .line 963
    invoke-virtual {p1}, Lc8/ef;->getAnimatedIntValue()I

    move-result v3

    .line 962
    invoke-virtual {v0, v1, v2, v3}, Lc8/oc;->setHeaderTopBottomOffset(Lc8/yd;Landroid/view/View;I)I

    .line 964
    return-void
.end method
