.class public Lc8/TKd;
.super Ljava/lang/Object;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UKd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmitterBuilder"
.end annotation


# static fields
.field protected static defaultEmitterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/UKd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field protected byteLimitGet:J

.field protected byteLimitPost:J

.field protected final context:Landroid/content/Context;

.field private emitterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/UKd;",
            ">;"
        }
    .end annotation
.end field

.field protected emitterTick:I

.field protected emptyLimit:I

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field protected httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

.field protected requestCallback:Lc8/WKd;

.field protected requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

.field protected sendLimit:I

.field protected sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field protected final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lc8/TKd;->defaultEmitterClass:Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, Lc8/TKd;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/UKd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "emitterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;>;"
    const-wide/32 v2, 0x9c40

    const/4 v1, 0x5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TKd;->requestCallback:Lc8/WKd;

    .line 71
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;->POST:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    iput-object v0, p0, Lc8/TKd;->httpMethod:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/HttpMethod;

    .line 72
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->Single:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    iput-object v0, p0, Lc8/TKd;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 73
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;->HTTPS:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    iput-object v0, p0, Lc8/TKd;->requestSecurity:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestSecurity;

    .line 74
    iput v1, p0, Lc8/TKd;->emitterTick:I

    .line 75
    const/16 v0, 0xfa

    iput v0, p0, Lc8/TKd;->sendLimit:I

    .line 76
    iput v1, p0, Lc8/TKd;->emptyLimit:I

    .line 77
    iput-wide v2, p0, Lc8/TKd;->byteLimitGet:J

    .line 78
    iput-wide v2, p0, Lc8/TKd;->byteLimitPost:J

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lc8/TKd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 98
    iput-object p1, p0, Lc8/TKd;->uri:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lc8/TKd;->context:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lc8/TKd;->emitterClass:Ljava/lang/Class;

    .line 101
    return-void
.end method


# virtual methods
.method public callback(Lc8/WKd;)Lc8/TKd;
    .locals 0
    .param p1, "requestCallback"    # Lc8/WKd;

    .prologue
    .line 153
    iput-object p1, p0, Lc8/TKd;->requestCallback:Lc8/WKd;

    .line 154
    return-object p0
.end method

.method public emptyLimit(I)Lc8/TKd;
    .locals 0
    .param p1, "emptyLimit"    # I

    .prologue
    .line 181
    iput p1, p0, Lc8/TKd;->emptyLimit:I

    .line 182
    return-object p0
.end method

.method public option(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;)Lc8/TKd;
    .locals 0
    .param p1, "option"    # Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .prologue
    .line 117
    iput-object p1, p0, Lc8/TKd;->bufferOption:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 118
    return-object p0
.end method

.method public sendLimit(I)Lc8/TKd;
    .locals 0
    .param p1, "sendLimit"    # I

    .prologue
    .line 171
    iput p1, p0, Lc8/TKd;->sendLimit:I

    .line 172
    return-object p0
.end method

.method public tick(I)Lc8/TKd;
    .locals 0
    .param p1, "emitterTick"    # I

    .prologue
    .line 162
    iput p1, p0, Lc8/TKd;->emitterTick:I

    .line 163
    return-object p0
.end method
