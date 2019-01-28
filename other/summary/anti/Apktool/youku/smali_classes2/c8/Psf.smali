.class public interface abstract Lc8/Psf;
.super Ljava/lang/Object;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ysf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DefaultProbeHosts"
.end annotation


# static fields
.field public static final ONLINE:[Ljava/lang/String;

.field public static final PREPARE:[Ljava/lang/String;

.field public static final TEST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "acs.m.taobao.com"

    aput-object v1, v0, v2

    sput-object v0, Lc8/Psf;->ONLINE:[Ljava/lang/String;

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "acs.wapa.taobao.com"

    aput-object v1, v0, v2

    sput-object v0, Lc8/Psf;->PREPARE:[Ljava/lang/String;

    .line 111
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "acs.waptest.taobao.com"

    aput-object v1, v0, v2

    sput-object v0, Lc8/Psf;->TEST:[Ljava/lang/String;

    return-void
.end method
