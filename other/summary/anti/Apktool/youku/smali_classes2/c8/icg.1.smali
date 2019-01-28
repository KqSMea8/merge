.class public Lc8/icg;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lcg;->updateAdapterScaleAndAlpha(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lcg;

.field final synthetic val$alpha:F

.field final synthetic val$currentPage:Landroid/view/View;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lc8/lcg;Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/icg;->this$0:Lc8/lcg;

    iput-object p2, p0, Lc8/icg;->val$currentPage:Landroid/view/View;

    iput p3, p0, Lc8/icg;->val$alpha:F

    iput p4, p0, Lc8/icg;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lc8/icg;->this$0:Lc8/lcg;

    iget-object v1, p0, Lc8/icg;->val$currentPage:Landroid/view/View;

    iget v2, p0, Lc8/icg;->val$alpha:F

    iget v3, p0, Lc8/icg;->val$scale:F

    invoke-static {v0, v1, v2, v3}, Lc8/lcg;->access$000(Lc8/lcg;Landroid/view/View;FF)V

    .line 187
    return-void
.end method
