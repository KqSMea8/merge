.class public Lc8/OXe;
.super Lc8/AXe;
.source "AVFSAliDBFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lc8/AXe;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataBase(Ljava/lang/String;)Lc8/CXe;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lc8/QXe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc8/QXe;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createDataBase(Ljava/lang/String;I)Lc8/CXe;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lc8/QXe;

    invoke-direct {v0, p1, p2}, Lc8/QXe;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createDataBase(Ljava/lang/String;Ljava/lang/String;)Lc8/CXe;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lc8/QXe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lc8/QXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createDataBase(Ljava/lang/String;Ljava/lang/String;I)Lc8/CXe;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lc8/QXe;

    invoke-direct {v0, p1, p2, p3}, Lc8/QXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
