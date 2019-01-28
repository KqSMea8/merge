.class public Lc8/hu;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Lc8/hu;


# instance fields
.field final alignment:Lc8/Yt;

.field final span:Lc8/du;

.field final startDefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2280
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lc8/iu;->spec(I)Lc8/hu;

    move-result-object v0

    sput-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    return-void
.end method

.method private constructor <init>(ZIILc8/Yt;)V
    .locals 2
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Lc8/Yt;

    .prologue
    .line 2293
    new-instance v0, Lc8/du;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Lc8/du;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Lc8/hu;-><init>(ZLc8/du;Lc8/Yt;)V

    .line 2294
    return-void
.end method

.method synthetic constructor <init>(ZIILc8/Yt;Lc8/Pt;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lc8/Yt;
    .param p5, "x4"    # Lc8/Pt;

    .prologue
    .line 2279
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/hu;-><init>(ZIILc8/Yt;)V

    return-void
.end method

.method private constructor <init>(ZLc8/du;Lc8/Yt;)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Lc8/du;
    .param p3, "alignment"    # Lc8/Yt;

    .prologue
    .line 2286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2287
    iput-boolean p1, p0, Lc8/hu;->startDefined:Z

    .line 2288
    iput-object p2, p0, Lc8/hu;->span:Lc8/du;

    .line 2289
    iput-object p3, p0, Lc8/hu;->alignment:Lc8/Yt;

    .line 2290
    return-void
.end method


# virtual methods
.method final copyWriteAlignment(Lc8/Yt;)Lc8/hu;
    .locals 3
    .param p1, "alignment"    # Lc8/Yt;

    .prologue
    .line 2301
    new-instance v0, Lc8/hu;

    iget-boolean v1, p0, Lc8/hu;->startDefined:Z

    iget-object v2, p0, Lc8/hu;->span:Lc8/du;

    invoke-direct {v0, v1, v2, p1}, Lc8/hu;-><init>(ZLc8/du;Lc8/Yt;)V

    return-object v0
.end method

.method final copyWriteSpan(Lc8/du;)Lc8/hu;
    .locals 3
    .param p1, "span"    # Lc8/du;

    .prologue
    .line 2297
    new-instance v0, Lc8/hu;

    iget-boolean v1, p0, Lc8/hu;->startDefined:Z

    iget-object v2, p0, Lc8/hu;->alignment:Lc8/Yt;

    invoke-direct {v0, v1, p1, v2}, Lc8/hu;-><init>(ZLc8/du;Lc8/Yt;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2320
    if-ne p0, p1, :cond_1

    .line 2337
    :cond_0
    :goto_0
    return v1

    .line 2323
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2324
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2327
    check-cast v0, Lc8/hu;

    .line 2329
    .local v0, "spec":Lc8/hu;
    iget-object v3, p0, Lc8/hu;->alignment:Lc8/Yt;

    iget-object v4, v0, Lc8/hu;->alignment:Lc8/Yt;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2330
    goto :goto_0

    .line 2333
    :cond_4
    iget-object v3, p0, Lc8/hu;->span:Lc8/du;

    iget-object v4, v0, Lc8/hu;->span:Lc8/du;

    invoke-virtual {v3, v4}, Lc8/du;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2334
    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lc8/hu;->alignment:Lc8/Yt;

    sget-object v1, Lc8/iu;->UNDEFINED_ALIGNMENT:Lc8/Yt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2342
    iget-object v1, p0, Lc8/hu;->span:Lc8/du;

    invoke-virtual {v1}, Lc8/du;->hashCode()I

    move-result v0

    .line 2343
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lc8/hu;->alignment:Lc8/Yt;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2344
    return v0
.end method
