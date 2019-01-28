.class public final enum Lcom/alibaba/baichuan/android/auth/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alibaba/baichuan/android/auth/a;

.field public static d:Ljava/util/HashMap;

.field private static final synthetic e:[Lcom/alibaba/baichuan/android/auth/a;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/baichuan/android/auth/a;

    const-string/jumbo v1, "HINTLIST_NULL"

    const-string/jumbo v2, "\u6388\u6743\u5217\u8868\u4e3anull\uff08\u8bf7\u4f7f\u7528want\u7ec4\u4ef6\u8c03\u7528\u6388\u6743api\uff09"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/alibaba/baichuan/android/auth/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    new-array v0, v4, [Lcom/alibaba/baichuan/android/auth/a;

    sget-object v1, Lcom/alibaba/baichuan/android/auth/a;->a:Lcom/alibaba/baichuan/android/auth/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/android/auth/a;->e:[Lcom/alibaba/baichuan/android/auth/a;

    new-instance v0, Lcom/alibaba/baichuan/android/auth/b;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/auth/b;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/android/auth/a;->d:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/auth/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/baichuan/android/auth/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/android/auth/a;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/auth/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/auth/a;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/android/auth/a;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/auth/a;->e:[Lcom/alibaba/baichuan/android/auth/a;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/android/auth/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/android/auth/a;

    return-object v0
.end method
