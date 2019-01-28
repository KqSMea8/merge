.class public Lc8/Kw;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Lc8/Qw;


# direct methods
.method public constructor <init>(Lc8/Qw;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qw;

    .prologue
    .line 3229
    iput-object p1, p0, Lc8/Kw;->this$0:Lc8/Qw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3230
    invoke-virtual {p0}, Lc8/Kw;->reset()V

    .line 3231
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 3256
    iget-boolean v0, p0, Lc8/Kw;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Kw;->this$0:Lc8/Qw;

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v0}, Lc8/Ru;->getEndAfterPadding()I

    move-result v0

    .line 3257
    :goto_0
    iput v0, p0, Lc8/Kw;->mOffset:I

    .line 3258
    return-void

    .line 3256
    :cond_0
    iget-object v0, p0, Lc8/Kw;->this$0:Lc8/Qw;

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    .line 3257
    invoke-virtual {v0}, Lc8/Ru;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method assignCoordinateFromPadding(I)V
    .locals 1
    .param p1, "addedDistance"    # I

    .prologue
    .line 3261
    iget-boolean v0, p0, Lc8/Kw;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 3262
    iget-object v0, p0, Lc8/Kw;->this$0:Lc8/Qw;

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v0}, Lc8/Ru;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lc8/Kw;->mOffset:I

    .line 3266
    :goto_0
    return-void

    .line 3264
    :cond_0
    iget-object v0, p0, Lc8/Kw;->this$0:Lc8/Qw;

    iget-object v0, v0, Lc8/Qw;->mPrimaryOrientation:Lc8/Ru;

    invoke-virtual {v0}, Lc8/Ru;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lc8/Kw;->mOffset:I

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3234
    iput v2, p0, Lc8/Kw;->mPosition:I

    .line 3235
    const/high16 v0, -0x80000000

    iput v0, p0, Lc8/Kw;->mOffset:I

    .line 3236
    iput-boolean v1, p0, Lc8/Kw;->mLayoutFromEnd:Z

    .line 3237
    iput-boolean v1, p0, Lc8/Kw;->mInvalidateOffsets:Z

    .line 3238
    iput-boolean v1, p0, Lc8/Kw;->mValid:Z

    .line 3239
    iget-object v0, p0, Lc8/Kw;->mSpanReferenceLines:[I

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lc8/Kw;->mSpanReferenceLines:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3242
    :cond_0
    return-void
.end method

.method saveSpanReferenceLines([Lc8/Pw;)V
    .locals 5
    .param p1, "spans"    # [Lc8/Pw;

    .prologue
    .line 3245
    array-length v1, p1

    .line 3246
    .local v1, "spanCount":I
    iget-object v2, p0, Lc8/Kw;->mSpanReferenceLines:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Kw;->mSpanReferenceLines:[I

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 3247
    :cond_0
    iget-object v2, p0, Lc8/Kw;->this$0:Lc8/Qw;

    iget-object v2, v2, Lc8/Qw;->mSpans:[Lc8/Pw;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lc8/Kw;->mSpanReferenceLines:[I

    .line 3249
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3251
    iget-object v2, p0, Lc8/Kw;->mSpanReferenceLines:[I

    aget-object v3, p1, v0

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lc8/Pw;->getStartLine(I)I

    move-result v3

    aput v3, v2, v0

    .line 3249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3253
    :cond_2
    return-void
.end method
