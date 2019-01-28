.class public Lc8/bUb;
.super Ljava/lang/Object;
.source "UTRestConfigData.java"


# static fields
.field public static final G_FIXED_SIGNED_POST_URL:Ljava/lang/String; = "http://adash.m.taobao.com/rest/ur?ak=21534429&av=1.0&c=Statistic%40taobao.1.0.6&v=1.0&s=1019ae9f470b752f9c2a15f19fb60609&d=U%2Bi7frcx68MDAIO%2BguY5JBVk&sv=2.0.5_m3&p=iPhone%20OS&t=1408074775&u=&type=ch4a_rest"

.field private static s_instance:Lc8/bUb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lc8/bUb;

    invoke-direct {v0}, Lc8/bUb;-><init>()V

    sput-object v0, Lc8/bUb;->s_instance:Lc8/bUb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getInstance()Lc8/bUb;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/bUb;->s_instance:Lc8/bUb;

    return-object v0
.end method
