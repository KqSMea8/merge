.class public final Lc8/DLc;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lc8/BLc;


# direct methods
.method constructor <init>(Lc8/BLc;)V
    .locals 0

    iput-object p1, p0, Lc8/DLc;->a:Lc8/BLc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method
