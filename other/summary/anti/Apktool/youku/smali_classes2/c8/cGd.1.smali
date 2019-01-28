.class public final Lc8/cGd;
.super Ljava/lang/Object;
.source "ConstConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "9aj&#k81"

    sput-object v0, Lc8/cGd;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lc8/cGd;->b:Ljava/lang/String;

    const-string/jumbo v0, "9aj&#k81"

    sput-object v0, Lc8/cGd;->a:Ljava/lang/String;

    const-string/jumbo v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lc8/cGd;->b:Ljava/lang/String;

    return-void
.end method
