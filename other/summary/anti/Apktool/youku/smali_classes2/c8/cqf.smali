.class public Lc8/cqf;
.super Ljava/lang/Object;
.source "DiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskDumpInfoEntry"
.end annotation


# instance fields
.field public final firstBits:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final size:F

.field public final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "firstBits"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lc8/cqf;->path:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lc8/cqf;->type:Ljava/lang/String;

    .line 170
    iput p3, p0, Lc8/cqf;->size:F

    .line 171
    iput-object p4, p0, Lc8/cqf;->firstBits:Ljava/lang/String;

    .line 172
    return-void
.end method
