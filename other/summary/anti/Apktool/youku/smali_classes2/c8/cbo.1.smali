.class public Lc8/cbo;
.super Ljava/lang/Object;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# instance fields
.field public isRemoveable:Z

.field public path:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object p1, p0, Lc8/cbo;->path:Ljava/lang/String;

    .line 1360
    return-void
.end method


# virtual methods
.method public isMounted()Z
    .locals 2

    .prologue
    .line 1363
    const-string/jumbo v0, "mounted"

    iget-object v1, p0, Lc8/cbo;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
