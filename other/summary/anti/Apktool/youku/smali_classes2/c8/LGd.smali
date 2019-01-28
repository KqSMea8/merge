.class public Lc8/LGd;
.super Ljava/lang/Object;
.source "EncryptionWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/MGd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComparatorByLastModified"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/MGd;


# direct methods
.method constructor <init>(Lc8/MGd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/MGd;

    .prologue
    .line 90
    iput-object p1, p0, Lc8/LGd;->this$0:Lc8/MGd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 94
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 95
    const/4 v2, -0x1

    .line 99
    :goto_0
    return v2

    .line 96
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 97
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 90
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lc8/LGd;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
