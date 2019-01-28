.class public Lc8/EXe;
.super Lc8/AXe;
.source "AVFSDefaultDBFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
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
    .line 10
    new-instance v0, Lc8/GXe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc8/GXe;-><init>(Ljava/lang/String;I)V

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
    .line 15
    new-instance v0, Lc8/GXe;

    invoke-direct {v0, p1, p2}, Lc8/GXe;-><init>(Ljava/lang/String;I)V

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
    .line 20
    new-instance v0, Lc8/GXe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lc8/GXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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
    .line 25
    new-instance v0, Lc8/GXe;

    invoke-direct {v0, p1, p2, p3}, Lc8/GXe;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
