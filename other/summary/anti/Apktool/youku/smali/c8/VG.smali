.class public Lc8/VG;
.super Ljava/lang/Object;
.source "ZipGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheFileData"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public seq:J

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
