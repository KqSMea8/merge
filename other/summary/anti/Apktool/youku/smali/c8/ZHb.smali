.class public Lc8/ZHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aIb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheInfo"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public obj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/ZHb;->key:Ljava/lang/String;

    iput-object p2, p0, Lc8/ZHb;->obj:Ljava/lang/String;

    return-void
.end method
