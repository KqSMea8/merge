.class public Lc8/xAg;
.super Ljava/lang/Object;
.source "MIPushConfig.java"


# static fields
.field public static MI_PUSH_APP_ID:Ljava/lang/String; = null

.field public static final MI_PUSH_APP_ID_OFFICAIL:Ljava/lang/String; = "2882303761517133985"

.field public static final MI_PUSH_APP_ID_TEST:Ljava/lang/String; = "2882303761517355740"

.field public static MI_PUSH_APP_KEY:Ljava/lang/String; = null

.field public static final MI_PUSH_APP_KEY_OFFICAIL:Ljava/lang/String; = "5301713335985"

.field public static final MI_PUSH_APP_KEY_TEST:Ljava/lang/String; = "5741735530740"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "2882303761517133985"

    sput-object v0, Lc8/xAg;->MI_PUSH_APP_ID:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "5301713335985"

    sput-object v0, Lc8/xAg;->MI_PUSH_APP_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
