.class public Lc8/RGb;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field public static volatile activity:Ljava/lang/ref/WeakReference;

.field public static pendingInitCallbacks:Ljava/util/List;

.field public static showProcessContext:Lcom/alibaba/baichuan/android/trade/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/RGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/RGb;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/RGb;->pendingInitCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc8/RGb;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method
