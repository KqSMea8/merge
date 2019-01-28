.class public Lc8/PG;
.super Ljava/lang/Object;
.source "ZipDownloaderComparable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/PG;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/PG;->name:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lc8/PG;->priority:I

    .line 11
    iput-object p1, p0, Lc8/PG;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lc8/PG;->priority:I

    .line 13
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/PG;)I
    .locals 2
    .param p1, "o"    # Lc8/PG;

    .prologue
    .line 21
    iget v0, p1, Lc8/PG;->priority:I

    iget v1, p0, Lc8/PG;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lc8/PG;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/PG;->compareTo(Lc8/PG;)I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lc8/PG;->name:Ljava/lang/String;

    return-object v0
.end method
