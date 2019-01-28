.class public Lc8/uOf;
.super Ljava/lang/Object;
.source "PhenixOptions.java"


# static fields
.field static final ONLY_CACHE:I = 0x8

.field static final PRELOAD_WITH_SMALL:I = 0x1

.field static final SCALE_FROM_LARGE:I = 0x2

.field static final SKIP_CACHE:I = 0x4

.field static final USE_ORIGIN_IF_THUMB_NOT_EXIST:I = 0x10


# instance fields
.field bitmapProcessors:[Lc8/ovf;

.field diskCachePriority:I

.field mSwitchFlags:I

.field memoryCachePriority:I

.field priorityModuleName:Ljava/lang/String;

.field schedulePriority:I

.field thumbnailType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lc8/uOf;->schedulePriority:I

    .line 22
    iput v1, p0, Lc8/uOf;->memoryCachePriority:I

    .line 23
    iput v1, p0, Lc8/uOf;->diskCachePriority:I

    return-void
.end method

.method public static isSame(Lc8/uOf;Lc8/uOf;)Z
    .locals 9
    .param p0, "options1"    # Lc8/uOf;
    .param p1, "options2"    # Lc8/uOf;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v5

    .line 106
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v5, v6

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    iget-object v7, p0, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p1, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    if-eqz v7, :cond_4

    move v5, v6

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    iget-object v7, p0, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    iget-object v8, p1, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    .line 113
    goto :goto_0

    .line 115
    :cond_5
    iget v7, p0, Lc8/uOf;->thumbnailType:I

    iget v8, p1, Lc8/uOf;->thumbnailType:I

    if-eq v7, v8, :cond_6

    move v5, v6

    .line 116
    goto :goto_0

    .line 118
    :cond_6
    iget v7, p0, Lc8/uOf;->schedulePriority:I

    iget v8, p1, Lc8/uOf;->schedulePriority:I

    if-eq v7, v8, :cond_7

    move v5, v6

    .line 119
    goto :goto_0

    .line 121
    :cond_7
    iget v7, p0, Lc8/uOf;->diskCachePriority:I

    iget v8, p1, Lc8/uOf;->diskCachePriority:I

    if-eq v7, v8, :cond_8

    move v5, v6

    .line 122
    goto :goto_0

    .line 124
    :cond_8
    iget v7, p0, Lc8/uOf;->mSwitchFlags:I

    iget v8, p1, Lc8/uOf;->mSwitchFlags:I

    if-eq v7, v8, :cond_9

    move v5, v6

    .line 125
    goto :goto_0

    .line 127
    :cond_9
    iget-object v7, p0, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    if-nez v7, :cond_a

    iget-object v7, p1, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    if-eqz v7, :cond_a

    move v5, v6

    .line 128
    goto :goto_0

    .line 130
    :cond_a
    iget-object v7, p0, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    if-eqz v7, :cond_0

    .line 131
    iget-object v7, p1, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    if-nez v7, :cond_b

    move v5, v6

    .line 132
    goto :goto_0

    .line 134
    :cond_b
    iget-object v7, p0, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    array-length v7, v7

    iget-object v8, p1, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    array-length v8, v8

    if-eq v7, v8, :cond_c

    move v5, v6

    .line 135
    goto :goto_0

    .line 138
    :cond_c
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget-object v7, p0, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 139
    iget-object v7, p0, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    aget-object v3, v7, v2

    .line 140
    .local v3, "processor1":Lc8/ovf;
    iget-object v7, p1, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    aget-object v4, v7, v2

    .line 141
    .local v4, "processor2":Lc8/ovf;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_d

    move v5, v6

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_d
    invoke-interface {v3}, Lc8/ovf;->getId()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "id1":Ljava/lang/String;
    invoke-interface {v4}, Lc8/ovf;->getId()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "id2":Ljava/lang/String;
    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    move v5, v6

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    move v5, v6

    .line 150
    goto/16 :goto_0

    .line 138
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public asThumbnail(IZ)Lc8/uOf;
    .locals 1
    .param p1, "thumbType"    # I
    .param p2, "useOriginIfThumbNotExist"    # Z

    .prologue
    .line 36
    iput p1, p0, Lc8/uOf;->thumbnailType:I

    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    .line 42
    :goto_0
    return-object p0

    .line 40
    :cond_0
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    goto :goto_0
.end method

.method public varargs bitmapProcessors([Lc8/ovf;)Lc8/uOf;
    .locals 0
    .param p1, "bitmapProcessors"    # [Lc8/ovf;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    .line 47
    return-object p0
.end method

.method public diskCachePriority(I)Lc8/uOf;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 61
    iput p1, p0, Lc8/uOf;->diskCachePriority:I

    .line 62
    return-object p0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 27
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public memoryCachePriority(I)Lc8/uOf;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 56
    iput p1, p0, Lc8/uOf;->memoryCachePriority:I

    .line 57
    return-object p0
.end method

.method public onlyCache(Z)Lc8/uOf;
    .locals 1
    .param p1, "only"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    .line 98
    :goto_0
    return-object p0

    .line 96
    :cond_0
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    goto :goto_0
.end method

.method public preloadWithSmall(Z)Lc8/uOf;
    .locals 1
    .param p1, "preload"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    .line 71
    :goto_0
    return-object p0

    .line 69
    :cond_0
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    goto :goto_0
.end method

.method public priorityModuleName(Ljava/lang/String;)Lc8/uOf;
    .locals 0
    .param p1, "priorityModuleName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public scaleFromLarge(Z)Lc8/uOf;
    .locals 1
    .param p1, "scale"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    .line 80
    :goto_0
    return-object p0

    .line 78
    :cond_0
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    goto :goto_0
.end method

.method public schedulePriority(I)Lc8/uOf;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 51
    iput p1, p0, Lc8/uOf;->schedulePriority:I

    .line 52
    return-object p0
.end method

.method public skipCache(Z)Lc8/uOf;
    .locals 1
    .param p1, "skip"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    .line 89
    :goto_0
    return-object p0

    .line 87
    :cond_0
    iget v0, p0, Lc8/uOf;->mSwitchFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lc8/uOf;->mSwitchFlags:I

    goto :goto_0
.end method
