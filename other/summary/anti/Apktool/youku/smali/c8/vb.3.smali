.class public Lc8/vb;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field private mAnchor:Lc8/ib;

.field private mCreator:I

.field private mMargin:I

.field private mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field private mTarget:Lc8/ib;


# direct methods
.method public constructor <init>(Lc8/ib;)V
    .locals 1
    .param p1, "anchor"    # Lc8/ib;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lc8/vb;->mAnchor:Lc8/ib;

    .line 49
    invoke-virtual {p1}, Lc8/ib;->getTarget()Lc8/ib;

    move-result-object v0

    iput-object v0, p0, Lc8/vb;->mTarget:Lc8/ib;

    .line 50
    invoke-virtual {p1}, Lc8/ib;->getMargin()I

    move-result v0

    iput v0, p0, Lc8/vb;->mMargin:I

    .line 51
    invoke-virtual {p1}, Lc8/ib;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    iput-object v0, p0, Lc8/vb;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 52
    invoke-virtual {p1}, Lc8/ib;->getConnectionCreator()I

    move-result v0

    iput v0, p0, Lc8/vb;->mCreator:I

    .line 53
    return-void
.end method


# virtual methods
.method public applyTo(Lc8/ob;)V
    .locals 5
    .param p1, "widget"    # Lc8/ob;

    .prologue
    .line 81
    iget-object v1, p0, Lc8/vb;->mAnchor:Lc8/ib;

    invoke-virtual {v1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v0

    .line 82
    .local v0, "anchor":Lc8/ib;
    iget-object v1, p0, Lc8/vb;->mTarget:Lc8/ib;

    iget v2, p0, Lc8/vb;->mMargin:I

    iget-object v3, p0, Lc8/vb;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iget v4, p0, Lc8/vb;->mCreator:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/ib;->connect(Lc8/ib;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 83
    return-void
.end method

.method public updateFrom(Lc8/ob;)V
    .locals 2
    .param p1, "widget"    # Lc8/ob;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    invoke-virtual {v0}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v0

    iput-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    .line 62
    iget-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    invoke-virtual {v0}, Lc8/ib;->getTarget()Lc8/ib;

    move-result-object v0

    iput-object v0, p0, Lc8/vb;->mTarget:Lc8/ib;

    .line 64
    iget-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    invoke-virtual {v0}, Lc8/ib;->getMargin()I

    move-result v0

    iput v0, p0, Lc8/vb;->mMargin:I

    .line 65
    iget-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    invoke-virtual {v0}, Lc8/ib;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    iput-object v0, p0, Lc8/vb;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 66
    iget-object v0, p0, Lc8/vb;->mAnchor:Lc8/ib;

    invoke-virtual {v0}, Lc8/ib;->getConnectionCreator()I

    move-result v0

    iput v0, p0, Lc8/vb;->mCreator:I

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/vb;->mTarget:Lc8/ib;

    .line 69
    iput v1, p0, Lc8/vb;->mMargin:I

    .line 70
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Lc8/vb;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 71
    iput v1, p0, Lc8/vb;->mCreator:I

    goto :goto_0
.end method
