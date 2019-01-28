.class public Lc8/ib;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;,
        Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    }
.end annotation


# static fields
.field private static final ALLOW_BINARY:Z = false

.field public static final ANY_GROUP:I = 0x7fffffff

.field public static final APPLY_GROUP_RESULTS:I = -0x2

.field public static final AUTO_CONSTRAINT_CREATOR:I = 0x2

.field public static final SCOUT_CREATOR:I = 0x1

.field private static final UNSET_GONE_MARGIN:I = -0x1

.field public static final USER_CREATOR:I

.field public static final USE_CENTER_ANCHOR:Z


# instance fields
.field private mConnectionCreator:I

.field private mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

.field mGoneMargin:I

.field mGroup:I

.field public mMargin:I

.field final mOwner:Lc8/ob;

.field mSolverVariable:Lc8/gb;

.field private mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field mTarget:Lc8/ib;

.field final mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;


# direct methods
.method public constructor <init>(Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 2
    .param p1, "owner"    # Lc8/ob;
    .param p2, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Lc8/ib;->mMargin:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lc8/ib;->mGoneMargin:I

    .line 70
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Lc8/ib;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 71
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Lc8/ib;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 72
    iput v1, p0, Lc8/ib;->mConnectionCreator:I

    .line 74
    const v0, 0x7fffffff

    iput v0, p0, Lc8/ib;->mGroup:I

    .line 82
    iput-object p1, p0, Lc8/ib;->mOwner:Lc8/ob;

    .line 83
    iput-object p2, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 84
    return-void
.end method

.method private isConnectionToMe(Lc8/ob;Ljava/util/HashSet;)Z
    .locals 7
    .param p1, "target"    # Lc8/ob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ob;",
            "Ljava/util/HashSet",
            "<",
            "Lc8/ob;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 585
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v4

    .line 588
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {p0}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v6

    if-ne p1, v6, :cond_2

    move v4, v5

    .line 591
    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p1}, Lc8/ob;->getAnchors()Ljava/util/ArrayList;

    move-result-object v2

    .line 594
    .local v2, "targetAnchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "targetAnchorsSize":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 595
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ib;

    .line 596
    .local v0, "anchor":Lc8/ib;
    invoke-virtual {v0, p0}, Lc8/ib;->isSimilarDimensionConnection(Lc8/ib;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lc8/ib;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 597
    invoke-virtual {v0}, Lc8/ib;->getTarget()Lc8/ib;

    move-result-object v6

    invoke-virtual {v6}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lc8/ib;->isConnectionToMe(Lc8/ob;Ljava/util/HashSet;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 598
    goto :goto_0

    .line 594
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private toString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lc8/ib;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/ib;->mOwner:Lc8/ob;

    invoke-virtual {v1}, Lc8/ob;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lc8/ib;->mTarget:Lc8/ib;

    invoke-direct {v2, p1}, Lc8/ib;->toString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_1
    return-object v0

    .line 426
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 428
    :cond_1
    const-string/jumbo v0, "<-"

    goto :goto_1
.end method


# virtual methods
.method public connect(Lc8/ib;I)Z
    .locals 7
    .param p1, "toAnchor"    # Lc8/ib;
    .param p2, "margin"    # I

    .prologue
    const/4 v5, 0x0

    .line 261
    const/4 v3, -0x1

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lc8/ib;->connect(Lc8/ib;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Lc8/ib;II)Z
    .locals 7
    .param p1, "toAnchor"    # Lc8/ib;
    .param p2, "margin"    # I
    .param p3, "creator"    # I

    .prologue
    .line 251
    const/4 v3, -0x1

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lc8/ib;->connect(Lc8/ib;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public connect(Lc8/ib;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z
    .locals 3
    .param p1, "toAnchor"    # Lc8/ib;
    .param p2, "margin"    # I
    .param p3, "goneMargin"    # I
    .param p4, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .param p5, "creator"    # I
    .param p6, "forceConnection"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/ib;->mTarget:Lc8/ib;

    .line 222
    iput v1, p0, Lc8/ib;->mMargin:I

    .line 223
    const/4 v1, -0x1

    iput v1, p0, Lc8/ib;->mGoneMargin:I

    .line 224
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v1, p0, Lc8/ib;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 225
    const/4 v1, 0x2

    iput v1, p0, Lc8/ib;->mConnectionCreator:I

    .line 240
    :goto_0
    return v0

    .line 228
    :cond_0
    if-nez p6, :cond_1

    invoke-virtual {p0, p1}, Lc8/ib;->isValidConnection(Lc8/ib;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_1
    iput-object p1, p0, Lc8/ib;->mTarget:Lc8/ib;

    .line 232
    if-lez p2, :cond_2

    .line 233
    iput p2, p0, Lc8/ib;->mMargin:I

    .line 237
    :goto_1
    iput p3, p0, Lc8/ib;->mGoneMargin:I

    .line 238
    iput-object p4, p0, Lc8/ib;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 239
    iput p5, p0, Lc8/ib;->mConnectionCreator:I

    goto :goto_0

    .line 235
    :cond_2
    iput v1, p0, Lc8/ib;->mMargin:I

    goto :goto_1
.end method

.method public connect(Lc8/ib;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z
    .locals 7
    .param p1, "toAnchor"    # Lc8/ib;
    .param p2, "margin"    # I
    .param p3, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .param p4, "creator"    # I

    .prologue
    .line 204
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lc8/ib;->connect(Lc8/ib;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v0

    return v0
.end method

.method public getConnectionCreator()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lc8/ib;->mConnectionCreator:I

    return v0
.end method

.method public getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lc8/ib;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    return-object v0
.end method

.method public getGroup()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lc8/ib;->mGroup:I

    return v0
.end method

.method public getMargin()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 136
    iget-object v0, p0, Lc8/ib;->mOwner:Lc8/ob;

    invoke-virtual {v0}, Lc8/ob;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 139
    :cond_0
    iget v0, p0, Lc8/ib;->mGoneMargin:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/ib;->mTarget:Lc8/ib;

    iget-object v0, v0, Lc8/ib;->mOwner:Lc8/ob;

    .line 140
    invoke-virtual {v0}, Lc8/ob;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 141
    iget v0, p0, Lc8/ib;->mGoneMargin:I

    goto :goto_0

    .line 143
    :cond_1
    iget v0, p0, Lc8/ib;->mMargin:I

    goto :goto_0
.end method

.method public final getOpposite()Lc8/ib;
    .locals 2

    .prologue
    .line 610
    sget-object v0, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 612
    :pswitch_0
    iget-object v0, p0, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v0, v0, Lc8/ob;->mRight:Lc8/ib;

    goto :goto_0

    .line 615
    :pswitch_1
    iget-object v0, p0, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v0, v0, Lc8/ob;->mLeft:Lc8/ib;

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v0, p0, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v0, v0, Lc8/ob;->mBottom:Lc8/ib;

    goto :goto_0

    .line 621
    :pswitch_3
    iget-object v0, p0, Lc8/ib;->mOwner:Lc8/ob;

    iget-object v0, v0, Lc8/ob;->mTop:Lc8/ib;

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOwner()Lc8/ob;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/ib;->mOwner:Lc8/ob;

    return-object v0
.end method

.method public getPriorityLevel()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 459
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 469
    :goto_0
    :pswitch_0
    return v0

    .line 462
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 463
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 464
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 465
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 466
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 467
    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSnapPriorityLevel()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 438
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 448
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 441
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 442
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 443
    goto :goto_0

    .line 445
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 446
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getSolverVariable()Lc8/gb;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lc8/ib;->mSolverVariable:Lc8/gb;

    return-object v0
.end method

.method public getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lc8/ib;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method

.method public getTarget()Lc8/ib;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lc8/ib;->mTarget:Lc8/ib;

    return-object v0
.end method

.method public getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionAllowed(Lc8/ob;)Z
    .locals 5
    .param p1, "target"    # Lc8/ob;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 563
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 564
    .local v0, "checked":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintWidget;>;"
    invoke-direct {p0, p1, v0}, Lc8/ib;->isConnectionToMe(Lc8/ob;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v2

    .line 567
    :cond_1
    invoke-virtual {p0}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v1

    .line 568
    .local v1, "parent":Lc8/ob;
    if-ne v1, p1, :cond_2

    move v2, v3

    .line 569
    goto :goto_0

    .line 571
    :cond_2
    invoke-virtual {p1}, Lc8/ob;->getParent()Lc8/ob;

    move-result-object v4

    if-ne v4, v1, :cond_0

    move v2, v3

    .line 572
    goto :goto_0
.end method

.method public isConnectionAllowed(Lc8/ob;Lc8/ib;)Z
    .locals 1
    .param p1, "target"    # Lc8/ob;
    .param p2, "anchor"    # Lc8/ib;

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lc8/ib;->isConnectionAllowed(Lc8/ob;)Z

    move-result v0

    return v0
.end method

.method public isSideAnchor()Z
    .locals 2

    .prologue
    .line 326
    sget-object v0, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 333
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 331
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSimilarDimensionConnection(Lc8/ib;)Z
    .locals 5
    .param p1, "anchor"    # Lc8/ib;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    .line 345
    .local v0, "target":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v3, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 348
    :cond_1
    sget-object v3, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v4, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 364
    goto :goto_0

    .line 350
    :pswitch_0
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 355
    :pswitch_1
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 361
    :pswitch_2
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public isSnapCompatibleWith(Lc8/ib;)Z
    .locals 4
    .param p1, "anchor"    # Lc8/ib;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 480
    iget-object v2, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_0

    .line 530
    :goto_0
    return v0

    .line 483
    :cond_0
    iget-object v2, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 484
    goto :goto_0

    .line 486
    :cond_1
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v3, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 488
    :pswitch_0
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 489
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 490
    goto :goto_0

    .line 495
    :pswitch_4
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 496
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 497
    goto :goto_0

    .line 502
    :pswitch_5
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 503
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 504
    goto :goto_0

    .line 509
    :pswitch_8
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    :pswitch_9
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 510
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 511
    goto/16 :goto_0

    .line 516
    :pswitch_c
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    :pswitch_d
    goto/16 :goto_0

    :pswitch_e
    move v0, v1

    .line 517
    goto/16 :goto_0

    :pswitch_f
    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 523
    :pswitch_10
    sget-object v2, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_11
    move v0, v1

    .line 524
    goto/16 :goto_0

    :pswitch_12
    move v0, v1

    .line 525
    goto/16 :goto_0

    .line 486
    .line 488
    .line 495
    .line 502
    .line 509
    .line 516
    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_5
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public isValidConnection(Lc8/ib;)Z
    .locals 6
    .param p1, "anchor"    # Lc8/ib;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    if-nez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    invoke-virtual {p1}, Lc8/ib;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    .line 282
    .local v1, "target":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;
    iget-object v4, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_3

    .line 284
    iget-object v4, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_0

    .line 288
    iget-object v4, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v4, v5, :cond_2

    .line 289
    invoke-virtual {p1}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ob;->hasBaseline()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v4

    invoke-virtual {v4}, Lc8/ob;->hasBaseline()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    .line 292
    goto :goto_0

    .line 294
    :cond_3
    sget-object v4, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v5, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 302
    :pswitch_1
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_4

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_7

    :cond_4
    move v0, v3

    .line 303
    .local v0, "isCompatible":Z
    :goto_1
    invoke-virtual {p1}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v4

    instance-of v4, v4, Lc8/sb;

    if-eqz v4, :cond_6

    .line 304
    if-nez v0, :cond_5

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_8

    :cond_5
    move v0, v3

    :cond_6
    :goto_2
    move v2, v0

    .line 306
    goto :goto_0

    .end local v0    # "isCompatible":Z
    :cond_7
    move v0, v2

    .line 302
    goto :goto_1

    .restart local v0    # "isCompatible":Z
    :cond_8
    move v0, v2

    .line 304
    goto :goto_2

    .line 310
    .end local v0    # "isCompatible":Z
    :pswitch_2
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v4, :cond_9

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_c

    :cond_9
    move v0, v3

    .line 311
    .restart local v0    # "isCompatible":Z
    :goto_3
    invoke-virtual {p1}, Lc8/ib;->getOwner()Lc8/ob;

    move-result-object v4

    instance-of v4, v4, Lc8/sb;

    if-eqz v4, :cond_b

    .line 312
    if-nez v0, :cond_a

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v4, :cond_d

    :cond_a
    move v0, v3

    :cond_b
    :goto_4
    move v2, v0

    .line 314
    goto/16 :goto_0

    .end local v0    # "isCompatible":Z
    :cond_c
    move v0, v2

    .line 310
    goto :goto_3

    .restart local v0    # "isCompatible":Z
    :cond_d
    move v0, v2

    .line 312
    goto :goto_4

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public isVerticalAnchor()Z
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lc8/hb;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    iget-object v1, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 410
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 408
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ib;->mTarget:Lc8/ib;

    .line 187
    iput v1, p0, Lc8/ib;->mMargin:I

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lc8/ib;->mGoneMargin:I

    .line 189
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Lc8/ib;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 190
    iput v1, p0, Lc8/ib;->mConnectionCreator:I

    .line 191
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->RELAXED:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    iput-object v0, p0, Lc8/ib;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 192
    return-void
.end method

.method public resetSolverVariable(Lc8/Z;)V
    .locals 2
    .param p1, "cache"    # Lc8/Z;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/ib;->mSolverVariable:Lc8/gb;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lc8/gb;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v0, v1}, Lc8/gb;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;)V

    iput-object v0, p0, Lc8/ib;->mSolverVariable:Lc8/gb;

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lc8/ib;->mSolverVariable:Lc8/gb;

    invoke-virtual {v0}, Lc8/gb;->reset()V

    goto :goto_0
.end method

.method public setConnectionCreator(I)V
    .locals 0
    .param p1, "creator"    # I

    .prologue
    .line 180
    iput p1, p0, Lc8/ib;->mConnectionCreator:I

    return-void
.end method

.method public setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V
    .locals 0
    .param p1, "type"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .prologue
    .line 168
    iput-object p1, p0, Lc8/ib;->mConnectionType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    .line 169
    return-void
.end method

.method public setGoneMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lc8/ib;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iput p1, p0, Lc8/ib;->mGoneMargin:I

    .line 395
    :cond_0
    return-void
.end method

.method public setGroup(I)V
    .locals 0
    .param p1, "group"    # I

    .prologue
    .line 108
    iput p1, p0, Lc8/ib;->mGroup:I

    .line 109
    return-void
.end method

.method public setMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 382
    invoke-virtual {p0}, Lc8/ib;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iput p1, p0, Lc8/ib;->mMargin:I

    .line 385
    :cond_0
    return-void
.end method

.method public setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 1
    .param p1, "strength"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .prologue
    .line 372
    invoke-virtual {p0}, Lc8/ib;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iput-object p1, p0, Lc8/ib;->mStrength:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 375
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 421
    .local v0, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/support/constraint/solver/widgets/ConstraintAnchor;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/ib;->mOwner:Lc8/ob;

    invoke-virtual {v2}, Lc8/ob;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ib;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lc8/ib;->mTarget:Lc8/ib;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " connected to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lc8/ib;->mTarget:Lc8/ib;

    invoke-direct {v3, v0}, Lc8/ib;->toString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method
