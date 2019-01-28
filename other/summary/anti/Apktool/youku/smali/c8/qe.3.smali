.class public Lc8/qe;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimator:Lc8/ef;

.field final mSpecs:[I


# direct methods
.method constructor <init>([ILc8/ef;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "animator"    # Lc8/ef;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lc8/qe;->mSpecs:[I

    .line 110
    iput-object p2, p0, Lc8/qe;->mAnimator:Lc8/ef;

    .line 111
    return-void
.end method
