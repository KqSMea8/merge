.class public Lc8/Kd;
.super Lc8/Md;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElevateToTranslationZAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nd;


# direct methods
.method constructor <init>(Lc8/Nd;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Lc8/Kd;->this$0:Lc8/Nd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Md;-><init>(Lc8/Nd;Lc8/Hd;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lc8/Kd;->this$0:Lc8/Nd;

    iget v0, v0, Lc8/Nd;->mElevation:F

    iget-object v1, p0, Lc8/Kd;->this$0:Lc8/Nd;

    iget v1, v1, Lc8/Nd;->mPressedTranslationZ:F

    add-float/2addr v0, v1

    return v0
.end method
