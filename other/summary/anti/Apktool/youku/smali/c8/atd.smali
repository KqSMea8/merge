.class public Lc8/atd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zsd;
    }
.end annotation


# static fields
.field public static final DEFAULT_TAG:Ljava/lang/String; = "MOMO_SDK_LOG"

.field public static final FILE_LOG:Ljava/lang/String; = "mlog.txt"

.field public static final TAG:Ljava/lang/String; = "Debug"

.field private static a:Ljava/util/Hashtable;

.field private static b:Ljava/util/ArrayList;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lc8/atd;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/atd;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lc8/atd;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "MOMO_SDK_LOG"

    const/4 v1, 0x6

    invoke-static {v0, v1, p0}, Lc8/atd;->print(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final print(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lc8/atd;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/Zsd;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Lc8/Zsd;

    move-result-object v0

    sget-object v1, Lc8/atd;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
