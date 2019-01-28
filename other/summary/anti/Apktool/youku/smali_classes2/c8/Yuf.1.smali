.class public Lc8/Yuf;
.super Ljava/lang/Object;
.source "MimeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xuf;
    }
.end annotation


# instance fields
.field private final mFileExtensions:[Ljava/lang/String;

.field private final mHasAlpha:Z

.field private final mIsAnimation:Z

.field private final mMajorName:Ljava/lang/String;

.field private final mMimeTypeChecker:Lc8/Xuf;

.field private final mMinorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Lc8/Xuf;)V
    .locals 7
    .param p1, "majorName"    # Ljava/lang/String;
    .param p2, "minorName"    # Ljava/lang/String;
    .param p3, "isAnimation"    # Z
    .param p4, "fileExtensions"    # [Ljava/lang/String;
    .param p5, "mimeTypeChecker"    # Lc8/Xuf;

    .prologue
    .line 26
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLc8/Xuf;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/Xuf;)V
    .locals 7
    .param p1, "majorName"    # Ljava/lang/String;
    .param p2, "minorName"    # Ljava/lang/String;
    .param p3, "fileExtensions"    # [Ljava/lang/String;
    .param p4, "mimeTypeChecker"    # Lc8/Xuf;

    .prologue
    const/4 v4, 0x0

    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLc8/Xuf;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLc8/Xuf;)V
    .locals 7
    .param p1, "majorName"    # Ljava/lang/String;
    .param p2, "minorName"    # Ljava/lang/String;
    .param p3, "fileExtensions"    # [Ljava/lang/String;
    .param p4, "hasAlpha"    # Z
    .param p5, "mimeTypeChecker"    # Lc8/Xuf;

    .prologue
    .line 22
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLc8/Xuf;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLc8/Xuf;)V
    .locals 0
    .param p1, "majorName"    # Ljava/lang/String;
    .param p2, "minorName"    # Ljava/lang/String;
    .param p3, "fileExtensions"    # [Ljava/lang/String;
    .param p4, "hasAlpha"    # Z
    .param p5, "isAnimation"    # Z
    .param p6, "mimeTypeChecker"    # Lc8/Xuf;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/Yuf;->mMajorName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lc8/Yuf;->mMinorName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lc8/Yuf;->mFileExtensions:[Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lc8/Yuf;->mHasAlpha:Z

    .line 34
    iput-boolean p5, p0, Lc8/Yuf;->mIsAnimation:Z

    .line 35
    iput-object p6, p0, Lc8/Yuf;->mMimeTypeChecker:Lc8/Xuf;

    .line 36
    return-void
.end method


# virtual methods
.method public getMajorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/Yuf;->mMajorName:Ljava/lang/String;

    return-object v0
.end method

.method public getMinorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Yuf;->mMinorName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lc8/Yuf;->mHasAlpha:Z

    return v0
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lc8/Yuf;->mIsAnimation:Z

    return v0
.end method

.method public isMyExtension(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v3, p0, Lc8/Yuf;->mFileExtensions:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 60
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    const/4 v1, 0x1

    .line 64
    .end local v0    # "t":Ljava/lang/String;
    :cond_0
    return v1

    .line 59
    .restart local v0    # "t":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isMyHeader([B)Z
    .locals 1
    .param p1, "header"    # [B

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Yuf;->mMimeTypeChecker:Lc8/Xuf;

    invoke-interface {v0, p1}, Lc8/Xuf;->isMyHeader([B)Z

    move-result v0

    return v0
.end method

.method public isSame(Lc8/Yuf;)Z
    .locals 2
    .param p1, "another"    # Lc8/Yuf;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/Yuf;->getMinorName()Ljava/lang/String;

    move-result-object v0

    .local v0, "minor":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/Yuf;->getMinorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "minor":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestMinHeaderSize()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Yuf;->mMimeTypeChecker:Lc8/Xuf;

    invoke-interface {v0}, Lc8/Xuf;->requestMinHeaderSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/Yuf;->getMinorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
