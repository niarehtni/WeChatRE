.class public Lcom/tencent/qqpim/utils/CommonLoginUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/tencent/qqpim/utils/CommonLoginUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mContext:Landroid/content/Context;

    .line 14
    sput-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mInstance:Lcom/tencent/qqpim/utils/CommonLoginUtil;

    .line 11
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sput-object p1, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/utils/CommonLoginUtil;
    .locals 2
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mInstance:Lcom/tencent/qqpim/utils/CommonLoginUtil;

    if-nez v0, :cond_3

    .line 23
    :cond_0
    const-class v1, Lcom/tencent/qqpim/utils/CommonLoginUtil;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mInstance:Lcom/tencent/qqpim/utils/CommonLoginUtil;

    if-nez v0, :cond_2

    .line 25
    :cond_1
    new-instance v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/utils/CommonLoginUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mInstance:Lcom/tencent/qqpim/utils/CommonLoginUtil;

    .line 23
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_3
    sget-object v0, Lcom/tencent/qqpim/utils/CommonLoginUtil;->mInstance:Lcom/tencent/qqpim/utils/CommonLoginUtil;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public postStaticData()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;-><init>(Lcom/tencent/qqpim/utils/CommonLoginUtil;Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;->start()V

    .line 35
    return-void
.end method
