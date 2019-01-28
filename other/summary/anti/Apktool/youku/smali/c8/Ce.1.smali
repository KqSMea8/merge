.class public Lc8/Ce;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lc8/Ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ee;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ee;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lc8/Ee;IIII)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ee;

    .prologue
    .line 2033
    iput-object p1, p0, Lc8/Ce;->this$1:Lc8/Ee;

    iput p2, p0, Lc8/Ce;->val$startLeft:I

    iput p3, p0, Lc8/Ce;->val$targetLeft:I

    iput p4, p0, Lc8/Ce;->val$startRight:I

    iput p5, p0, Lc8/Ce;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lc8/ef;)V
    .locals 5
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 2036
    invoke-virtual {p1}, Lc8/ef;->getAnimatedFraction()F

    move-result v0

    .line 2037
    .local v0, "fraction":F
    iget-object v1, p0, Lc8/Ce;->this$1:Lc8/Ee;

    iget v2, p0, Lc8/Ce;->val$startLeft:I

    iget v3, p0, Lc8/Ce;->val$targetLeft:I

    .line 2038
    invoke-static {v2, v3, v0}, Lc8/jc;->lerp(IIF)I

    move-result v2

    iget v3, p0, Lc8/Ce;->val$startRight:I

    iget v4, p0, Lc8/Ce;->val$targetRight:I

    .line 2039
    invoke-static {v3, v4, v0}, Lc8/jc;->lerp(IIF)I

    move-result v3

    .line 2037
    invoke-virtual {v1, v2, v3}, Lc8/Ee;->setIndicatorPosition(II)V

    .line 2040
    return-void
.end method
