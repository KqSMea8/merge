.class public Lc8/De;
.super Lc8/Ye;
.source "TabLayout.java"


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lc8/Ee;I)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ee;

    .prologue
    .line 2042
    iput-object p1, p0, Lc8/De;->this$1:Lc8/Ee;

    iput p2, p0, Lc8/De;->val$position:I

    invoke-direct {p0}, Lc8/Ye;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lc8/ef;)V
    .locals 2
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 2045
    iget-object v0, p0, Lc8/De;->this$1:Lc8/Ee;

    iget v1, p0, Lc8/De;->val$position:I

    iput v1, v0, Lc8/Ee;->mSelectedPosition:I

    .line 2046
    iget-object v0, p0, Lc8/De;->this$1:Lc8/Ee;

    const/4 v1, 0x0

    iput v1, v0, Lc8/Ee;->mSelectionOffset:F

    .line 2047
    return-void
.end method
