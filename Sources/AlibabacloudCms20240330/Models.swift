import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddonMeta : Tea.TeaModel {
    public class Dashboards : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public class Environments : Tea.TeaModel {
        public class Dependencies : Tea.TeaModel {
            public var clusterTypes: [String]?

            public var features: [String: Bool]?

            public var services: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterTypes != nil {
                    map["clusterTypes"] = self.clusterTypes!
                }
                if self.features != nil {
                    map["features"] = self.features!
                }
                if self.services != nil {
                    map["services"] = self.services!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clusterTypes"] as? [String] {
                    self.clusterTypes = value
                }
                if let value = dict["features"] as? [String: Bool] {
                    self.features = value
                }
                if let value = dict["services"] as? [String] {
                    self.services = value
                }
            }
        }
        public class Policies : Tea.TeaModel {
            public class BindEntity : Tea.TeaModel {
                public var entityGroupMode: Bool?

                public var entityType: String?

                public var singleEntityMode: Bool?

                public var vpcIdFieldKey: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.entityGroupMode != nil {
                        map["entityGroupMode"] = self.entityGroupMode!
                    }
                    if self.entityType != nil {
                        map["entityType"] = self.entityType!
                    }
                    if self.singleEntityMode != nil {
                        map["singleEntityMode"] = self.singleEntityMode!
                    }
                    if self.vpcIdFieldKey != nil {
                        map["vpcIdFieldKey"] = self.vpcIdFieldKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["entityGroupMode"] as? Bool {
                        self.entityGroupMode = value
                    }
                    if let value = dict["entityType"] as? String {
                        self.entityType = value
                    }
                    if let value = dict["singleEntityMode"] as? Bool {
                        self.singleEntityMode = value
                    }
                    if let value = dict["vpcIdFieldKey"] as? String {
                        self.vpcIdFieldKey = value
                    }
                }
            }
            public class MetricCheckRule : Tea.TeaModel {
                public var promQL: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.promQL != nil {
                        map["promQL"] = self.promQL!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["promQL"] as? [String] {
                        self.promQL = value
                    }
                }
            }
            public class Protocols : Tea.TeaModel {
                public var description_: String?

                public var icon: String?

                public var label: String?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.icon != nil {
                        map["icon"] = self.icon!
                    }
                    if self.label != nil {
                        map["label"] = self.label!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["icon"] as? String {
                        self.icon = value
                    }
                    if let value = dict["label"] as? String {
                        self.label = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var alertDefaultStatus: String?

            public var bindDefaultPolicy: Bool?

            public var bindEntity: AddonMeta.Environments.Policies.BindEntity?

            public var defaultInstall: Bool?

            public var enableServiceAccount: Bool?

            public var metricCheckRule: AddonMeta.Environments.Policies.MetricCheckRule?

            public var needRestartAfterIntegration: Bool?

            public var protocols: [AddonMeta.Environments.Policies.Protocols]?

            public var targetAddonName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bindEntity?.validate()
                try self.metricCheckRule?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDefaultStatus != nil {
                    map["alertDefaultStatus"] = self.alertDefaultStatus!
                }
                if self.bindDefaultPolicy != nil {
                    map["bindDefaultPolicy"] = self.bindDefaultPolicy!
                }
                if self.bindEntity != nil {
                    map["bindEntity"] = self.bindEntity?.toMap()
                }
                if self.defaultInstall != nil {
                    map["defaultInstall"] = self.defaultInstall!
                }
                if self.enableServiceAccount != nil {
                    map["enableServiceAccount"] = self.enableServiceAccount!
                }
                if self.metricCheckRule != nil {
                    map["metricCheckRule"] = self.metricCheckRule?.toMap()
                }
                if self.needRestartAfterIntegration != nil {
                    map["needRestartAfterIntegration"] = self.needRestartAfterIntegration!
                }
                if self.protocols != nil {
                    var tmp : [Any] = []
                    for k in self.protocols! {
                        tmp.append(k.toMap())
                    }
                    map["protocols"] = tmp
                }
                if self.targetAddonName != nil {
                    map["targetAddonName"] = self.targetAddonName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["alertDefaultStatus"] as? String {
                    self.alertDefaultStatus = value
                }
                if let value = dict["bindDefaultPolicy"] as? Bool {
                    self.bindDefaultPolicy = value
                }
                if let value = dict["bindEntity"] as? [String: Any?] {
                    var model = AddonMeta.Environments.Policies.BindEntity()
                    model.fromMap(value)
                    self.bindEntity = model
                }
                if let value = dict["defaultInstall"] as? Bool {
                    self.defaultInstall = value
                }
                if let value = dict["enableServiceAccount"] as? Bool {
                    self.enableServiceAccount = value
                }
                if let value = dict["metricCheckRule"] as? [String: Any?] {
                    var model = AddonMeta.Environments.Policies.MetricCheckRule()
                    model.fromMap(value)
                    self.metricCheckRule = model
                }
                if let value = dict["needRestartAfterIntegration"] as? Bool {
                    self.needRestartAfterIntegration = value
                }
                if let value = dict["protocols"] as? [Any?] {
                    var tmp : [AddonMeta.Environments.Policies.Protocols] = []
                    for v in value {
                        if v != nil {
                            var model = AddonMeta.Environments.Policies.Protocols()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.protocols = tmp
                }
                if let value = dict["targetAddonName"] as? String {
                    self.targetAddonName = value
                }
            }
        }
        public var dependencies: AddonMeta.Environments.Dependencies?

        public var description_: String?

        public var enable: Bool?

        public var label: String?

        public var name: String?

        public var policies: AddonMeta.Environments.Policies?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dependencies?.validate()
            try self.policies?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dependencies != nil {
                map["dependencies"] = self.dependencies?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.policies != nil {
                map["policies"] = self.policies?.toMap()
            }
            if self.policyType != nil {
                map["policyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dependencies"] as? [String: Any?] {
                var model = AddonMeta.Environments.Dependencies()
                model.fromMap(value)
                self.dependencies = model
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["label"] as? String {
                self.label = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["policies"] as? [String: Any?] {
                var model = AddonMeta.Environments.Policies()
                model.fromMap(value)
                self.policies = model
            }
            if let value = dict["policyType"] as? String {
                self.policyType = value
            }
        }
    }
    public var alias: String?

    public var categories: [String]?

    public var dashboards: [AddonMeta.Dashboards]?

    public var description_: String?

    public var environments: [AddonMeta.Environments]?

    public var icon: String?

    public var keywords: [String]?

    public var language: String?

    public var latestReleaseCreateTime: String?

    public var name: String?

    public var once: Bool?

    public var scene: String?

    public var version: String?

    public var weight: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["alias"] = self.alias!
        }
        if self.categories != nil {
            map["categories"] = self.categories!
        }
        if self.dashboards != nil {
            var tmp : [Any] = []
            for k in self.dashboards! {
                tmp.append(k.toMap())
            }
            map["dashboards"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environments != nil {
            var tmp : [Any] = []
            for k in self.environments! {
                tmp.append(k.toMap())
            }
            map["environments"] = tmp
        }
        if self.icon != nil {
            map["icon"] = self.icon!
        }
        if self.keywords != nil {
            map["keywords"] = self.keywords!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.latestReleaseCreateTime != nil {
            map["latestReleaseCreateTime"] = self.latestReleaseCreateTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.once != nil {
            map["once"] = self.once!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.weight != nil {
            map["weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alias"] as? String {
            self.alias = value
        }
        if let value = dict["categories"] as? [String] {
            self.categories = value
        }
        if let value = dict["dashboards"] as? [Any?] {
            var tmp : [AddonMeta.Dashboards] = []
            for v in value {
                if v != nil {
                    var model = AddonMeta.Dashboards()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dashboards = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["environments"] as? [Any?] {
            var tmp : [AddonMeta.Environments] = []
            for v in value {
                if v != nil {
                    var model = AddonMeta.Environments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.environments = tmp
        }
        if let value = dict["icon"] as? String {
            self.icon = value
        }
        if let value = dict["keywords"] as? [String] {
            self.keywords = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["latestReleaseCreateTime"] as? String {
            self.latestReleaseCreateTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["once"] as? Bool {
            self.once = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
        if let value = dict["weight"] as? Int32 {
            self.weight = value
        }
    }
}

public class AlertEventIntegrationPolicyForModify : Tea.TeaModel {
    public var alertEventIntegrationPolicyName: String?

    public var description_: String?

    public var filterSetting: FilterSetting?

    public var integrationSetting: String?

    public var transformerSetting: [TransformAction]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEventIntegrationPolicyName != nil {
            map["alertEventIntegrationPolicyName"] = self.alertEventIntegrationPolicyName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.integrationSetting != nil {
            map["integrationSetting"] = self.integrationSetting!
        }
        if self.transformerSetting != nil {
            var tmp : [Any] = []
            for k in self.transformerSetting! {
                tmp.append(k.toMap())
            }
            map["transformerSetting"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertEventIntegrationPolicyName"] as? String {
            self.alertEventIntegrationPolicyName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["integrationSetting"] as? String {
            self.integrationSetting = value
        }
        if let value = dict["transformerSetting"] as? [Any?] {
            var tmp : [TransformAction] = []
            for v in value {
                if v != nil {
                    var model = TransformAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transformerSetting = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class AlertEventIntegrationPolicyForView : Tea.TeaModel {
    public var alertEventIntegrationPolicyId: String?

    public var alertEventIntegrationPolicyName: String?

    public var createTime: String?

    public var description_: String?

    public var enable: Bool?

    public var filterSetting: FilterSetting?

    public var integrationSetting: String?

    public var token: String?

    public var transformerSetting: [TransformAction]?

    public var type: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertEventIntegrationPolicyId != nil {
            map["alertEventIntegrationPolicyId"] = self.alertEventIntegrationPolicyId!
        }
        if self.alertEventIntegrationPolicyName != nil {
            map["alertEventIntegrationPolicyName"] = self.alertEventIntegrationPolicyName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.integrationSetting != nil {
            map["integrationSetting"] = self.integrationSetting!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.transformerSetting != nil {
            var tmp : [Any] = []
            for k in self.transformerSetting! {
                tmp.append(k.toMap())
            }
            map["transformerSetting"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertEventIntegrationPolicyId"] as? String {
            self.alertEventIntegrationPolicyId = value
        }
        if let value = dict["alertEventIntegrationPolicyName"] as? String {
            self.alertEventIntegrationPolicyName = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["integrationSetting"] as? String {
            self.integrationSetting = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["transformerSetting"] as? [Any?] {
            var tmp : [TransformAction] = []
            for v in value {
                if v != nil {
                    var model = TransformAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transformerSetting = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class AlertRuleAction : Tea.TeaModel {
    public var actions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            map["actions"] = self.actions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actions"] as? [String] {
            self.actions = value
        }
    }
}

public class AlertRuleAlertMetricFilterDef : Tea.TeaModel {
    public class SupportedOpts : Tea.TeaModel {
        public var displayNameCn: String?

        public var displayNameEn: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayNameCn != nil {
                map["displayNameCn"] = self.displayNameCn!
            }
            if self.displayNameEn != nil {
                map["displayNameEn"] = self.displayNameEn!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["displayNameCn"] as? String {
                self.displayNameCn = value
            }
            if let value = dict["displayNameEn"] as? String {
                self.displayNameEn = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var dim: String?

    public var dimDisabled: Bool?

    public var displayNameCn: String?

    public var displayNameEn: String?

    public var hidden: Bool?

    public var labelDisabled: Bool?

    public var opt: String?

    public var supportedOpts: [AlertRuleAlertMetricFilterDef.SupportedOpts]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dim != nil {
            map["dim"] = self.dim!
        }
        if self.dimDisabled != nil {
            map["dimDisabled"] = self.dimDisabled!
        }
        if self.displayNameCn != nil {
            map["displayNameCn"] = self.displayNameCn!
        }
        if self.displayNameEn != nil {
            map["displayNameEn"] = self.displayNameEn!
        }
        if self.hidden != nil {
            map["hidden"] = self.hidden!
        }
        if self.labelDisabled != nil {
            map["labelDisabled"] = self.labelDisabled!
        }
        if self.opt != nil {
            map["opt"] = self.opt!
        }
        if self.supportedOpts != nil {
            var tmp : [Any] = []
            for k in self.supportedOpts! {
                tmp.append(k.toMap())
            }
            map["supportedOpts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dim"] as? String {
            self.dim = value
        }
        if let value = dict["dimDisabled"] as? Bool {
            self.dimDisabled = value
        }
        if let value = dict["displayNameCn"] as? String {
            self.displayNameCn = value
        }
        if let value = dict["displayNameEn"] as? String {
            self.displayNameEn = value
        }
        if let value = dict["hidden"] as? Bool {
            self.hidden = value
        }
        if let value = dict["labelDisabled"] as? Bool {
            self.labelDisabled = value
        }
        if let value = dict["opt"] as? String {
            self.opt = value
        }
        if let value = dict["supportedOpts"] as? [Any?] {
            var tmp : [AlertRuleAlertMetricFilterDef.SupportedOpts] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleAlertMetricFilterDef.SupportedOpts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supportedOpts = tmp
        }
    }
}

public class AlertRuleAlertMetricInput : Tea.TeaModel {
    public var filterValues: [AlertRuleAlertMetricInputFilterValue]?

    public var groupId: String?

    public var metricId: String?

    public var paramValues: [AlertRuleAlertMetricInputParamValue]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterValues != nil {
            var tmp : [Any] = []
            for k in self.filterValues! {
                tmp.append(k.toMap())
            }
            map["filterValues"] = tmp
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.metricId != nil {
            map["metricId"] = self.metricId!
        }
        if self.paramValues != nil {
            var tmp : [Any] = []
            for k in self.paramValues! {
                tmp.append(k.toMap())
            }
            map["paramValues"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filterValues"] as? [Any?] {
            var tmp : [AlertRuleAlertMetricInputFilterValue] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleAlertMetricInputFilterValue()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filterValues = tmp
        }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["metricId"] as? String {
            self.metricId = value
        }
        if let value = dict["paramValues"] as? [Any?] {
            var tmp : [AlertRuleAlertMetricInputParamValue] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleAlertMetricInputParamValue()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.paramValues = tmp
        }
    }
}

public class AlertRuleAlertMetricInputFilterValue : Tea.TeaModel {
    public var dim: String?

    public var opt: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dim != nil {
            map["dim"] = self.dim!
        }
        if self.opt != nil {
            map["opt"] = self.opt!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dim"] as? String {
            self.dim = value
        }
        if let value = dict["opt"] as? String {
            self.opt = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class AlertRuleAlertMetricInputParamValue : Tea.TeaModel {
    public var name: String?

    public var value: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class AlertRuleAlertMetricParamDef : Tea.TeaModel {
    public class Values : Tea.TeaModel {
        public var labelCn: String?

        public var labelEn: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.labelCn != nil {
                map["labelCn"] = self.labelCn!
            }
            if self.labelEn != nil {
                map["labelEn"] = self.labelEn!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["labelCn"] as? String {
                self.labelCn = value
            }
            if let value = dict["labelEn"] as? String {
                self.labelEn = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var maxWidth: Int32?

    public var minWidth: Int32?

    public var name: String?

    public var placeholderCn: String?

    public var placeholderEn: String?

    public var type: String?

    public var value: String?

    public var values: [AlertRuleAlertMetricParamDef.Values]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxWidth != nil {
            map["maxWidth"] = self.maxWidth!
        }
        if self.minWidth != nil {
            map["minWidth"] = self.minWidth!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.placeholderCn != nil {
            map["placeholderCn"] = self.placeholderCn!
        }
        if self.placeholderEn != nil {
            map["placeholderEn"] = self.placeholderEn!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.values != nil {
            var tmp : [Any] = []
            for k in self.values! {
                tmp.append(k.toMap())
            }
            map["values"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxWidth"] as? Int32 {
            self.maxWidth = value
        }
        if let value = dict["minWidth"] as? Int32 {
            self.minWidth = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["placeholderCn"] as? String {
            self.placeholderCn = value
        }
        if let value = dict["placeholderEn"] as? String {
            self.placeholderEn = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
        if let value = dict["values"] as? [Any?] {
            var tmp : [AlertRuleAlertMetricParamDef.Values] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleAlertMetricParamDef.Values()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.values = tmp
        }
    }
}

public class AlertRuleCondition : Tea.TeaModel {
    public class CaseList : Tea.TeaModel {
        public var condition: String?

        public var countCondition: String?

        public var level: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.condition != nil {
                map["condition"] = self.condition!
            }
            if self.countCondition != nil {
                map["countCondition"] = self.countCondition!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["condition"] as? String {
                self.condition = value
            }
            if let value = dict["countCondition"] as? String {
                self.countCondition = value
            }
            if let value = dict["level"] as? String {
                self.level = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class CompareList : Tea.TeaModel {
        public class ValueLevelList : Tea.TeaModel {
            public var level: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["level"] as? String {
                    self.level = value
                }
                if let value = dict["value"] as? Double {
                    self.value = value
                }
            }
        }
        public var aggregate: String?

        public var oper: String?

        public var value: Double?

        public var valueLevelList: [AlertRuleCondition.CompareList.ValueLevelList]?

        public var yoyTimeUnit: String?

        public var yoyTimeValue: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggregate != nil {
                map["aggregate"] = self.aggregate!
            }
            if self.oper != nil {
                map["oper"] = self.oper!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueLevelList != nil {
                var tmp : [Any] = []
                for k in self.valueLevelList! {
                    tmp.append(k.toMap())
                }
                map["valueLevelList"] = tmp
            }
            if self.yoyTimeUnit != nil {
                map["yoyTimeUnit"] = self.yoyTimeUnit!
            }
            if self.yoyTimeValue != nil {
                map["yoyTimeValue"] = self.yoyTimeValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aggregate"] as? String {
                self.aggregate = value
            }
            if let value = dict["oper"] as? String {
                self.oper = value
            }
            if let value = dict["value"] as? Double {
                self.value = value
            }
            if let value = dict["valueLevelList"] as? [Any?] {
                var tmp : [AlertRuleCondition.CompareList.ValueLevelList] = []
                for v in value {
                    if v != nil {
                        var model = AlertRuleCondition.CompareList.ValueLevelList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.valueLevelList = tmp
            }
            if let value = dict["yoyTimeUnit"] as? String {
                self.yoyTimeUnit = value
            }
            if let value = dict["yoyTimeValue"] as? Int32 {
                self.yoyTimeValue = value
            }
        }
    }
    public class CompositeEscalation : Tea.TeaModel {
        public class Escalations : Tea.TeaModel {
            public var comparisonOperator: String?

            public var metricName: String?

            public var period: Int64?

            public var statistics: String?

            public var threshold: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comparisonOperator != nil {
                    map["comparisonOperator"] = self.comparisonOperator!
                }
                if self.metricName != nil {
                    map["metricName"] = self.metricName!
                }
                if self.period != nil {
                    map["period"] = self.period!
                }
                if self.statistics != nil {
                    map["statistics"] = self.statistics!
                }
                if self.threshold != nil {
                    map["threshold"] = self.threshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["comparisonOperator"] as? String {
                    self.comparisonOperator = value
                }
                if let value = dict["metricName"] as? String {
                    self.metricName = value
                }
                if let value = dict["period"] as? Int64 {
                    self.period = value
                }
                if let value = dict["statistics"] as? String {
                    self.statistics = value
                }
                if let value = dict["threshold"] as? Double {
                    self.threshold = value
                }
            }
        }
        public var escalations: [AlertRuleCondition.CompositeEscalation.Escalations]?

        public var level: String?

        public var relation: String?

        public var times: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.escalations != nil {
                var tmp : [Any] = []
                for k in self.escalations! {
                    tmp.append(k.toMap())
                }
                map["escalations"] = tmp
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.relation != nil {
                map["relation"] = self.relation!
            }
            if self.times != nil {
                map["times"] = self.times!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["escalations"] as? [Any?] {
                var tmp : [AlertRuleCondition.CompositeEscalation.Escalations] = []
                for v in value {
                    if v != nil {
                        var model = AlertRuleCondition.CompositeEscalation.Escalations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.escalations = tmp
            }
            if let value = dict["level"] as? String {
                self.level = value
            }
            if let value = dict["relation"] as? String {
                self.relation = value
            }
            if let value = dict["times"] as? Int32 {
                self.times = value
            }
        }
    }
    public class ExpressEscalation : Tea.TeaModel {
        public var level: String?

        public var rawExpression: String?

        public var times: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.rawExpression != nil {
                map["rawExpression"] = self.rawExpression!
            }
            if self.times != nil {
                map["times"] = self.times!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["level"] as? String {
                self.level = value
            }
            if let value = dict["rawExpression"] as? String {
                self.rawExpression = value
            }
            if let value = dict["times"] as? Int32 {
                self.times = value
            }
        }
    }
    public class SimpleEscalation : Tea.TeaModel {
        public class Escalations : Tea.TeaModel {
            public var comparisonOperator: String?

            public var level: String?

            public var statistics: String?

            public var threshold: Double?

            public var times: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comparisonOperator != nil {
                    map["comparisonOperator"] = self.comparisonOperator!
                }
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.statistics != nil {
                    map["statistics"] = self.statistics!
                }
                if self.threshold != nil {
                    map["threshold"] = self.threshold!
                }
                if self.times != nil {
                    map["times"] = self.times!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["comparisonOperator"] as? String {
                    self.comparisonOperator = value
                }
                if let value = dict["level"] as? String {
                    self.level = value
                }
                if let value = dict["statistics"] as? String {
                    self.statistics = value
                }
                if let value = dict["threshold"] as? Double {
                    self.threshold = value
                }
                if let value = dict["times"] as? Int32 {
                    self.times = value
                }
            }
        }
        public var escalations: [AlertRuleCondition.SimpleEscalation.Escalations]?

        public var metricName: String?

        public var period: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.escalations != nil {
                var tmp : [Any] = []
                for k in self.escalations! {
                    tmp.append(k.toMap())
                }
                map["escalations"] = tmp
            }
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["escalations"] as? [Any?] {
                var tmp : [AlertRuleCondition.SimpleEscalation.Escalations] = []
                for v in value {
                    if v != nil {
                        var model = AlertRuleCondition.SimpleEscalation.Escalations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.escalations = tmp
            }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["period"] as? Int64 {
                self.period = value
            }
        }
    }
    public var alertCount: Int32?

    public var caseList: [AlertRuleCondition.CaseList]?

    public var compareList: [AlertRuleCondition.CompareList]?

    public var compositeEscalation: AlertRuleCondition.CompositeEscalation?

    public var escalationType: String?

    public var expressEscalation: AlertRuleCondition.ExpressEscalation?

    public var noDataAlertLevel: String?

    public var noDataAppendValue: String?

    public var noDataPolicy: String?

    public var relation: String?

    public var simpleEscalation: AlertRuleCondition.SimpleEscalation?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.compositeEscalation?.validate()
        try self.expressEscalation?.validate()
        try self.simpleEscalation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertCount != nil {
            map["alertCount"] = self.alertCount!
        }
        if self.caseList != nil {
            var tmp : [Any] = []
            for k in self.caseList! {
                tmp.append(k.toMap())
            }
            map["caseList"] = tmp
        }
        if self.compareList != nil {
            var tmp : [Any] = []
            for k in self.compareList! {
                tmp.append(k.toMap())
            }
            map["compareList"] = tmp
        }
        if self.compositeEscalation != nil {
            map["compositeEscalation"] = self.compositeEscalation?.toMap()
        }
        if self.escalationType != nil {
            map["escalationType"] = self.escalationType!
        }
        if self.expressEscalation != nil {
            map["expressEscalation"] = self.expressEscalation?.toMap()
        }
        if self.noDataAlertLevel != nil {
            map["noDataAlertLevel"] = self.noDataAlertLevel!
        }
        if self.noDataAppendValue != nil {
            map["noDataAppendValue"] = self.noDataAppendValue!
        }
        if self.noDataPolicy != nil {
            map["noDataPolicy"] = self.noDataPolicy!
        }
        if self.relation != nil {
            map["relation"] = self.relation!
        }
        if self.simpleEscalation != nil {
            map["simpleEscalation"] = self.simpleEscalation?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertCount"] as? Int32 {
            self.alertCount = value
        }
        if let value = dict["caseList"] as? [Any?] {
            var tmp : [AlertRuleCondition.CaseList] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleCondition.CaseList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.caseList = tmp
        }
        if let value = dict["compareList"] as? [Any?] {
            var tmp : [AlertRuleCondition.CompareList] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleCondition.CompareList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.compareList = tmp
        }
        if let value = dict["compositeEscalation"] as? [String: Any?] {
            var model = AlertRuleCondition.CompositeEscalation()
            model.fromMap(value)
            self.compositeEscalation = model
        }
        if let value = dict["escalationType"] as? String {
            self.escalationType = value
        }
        if let value = dict["expressEscalation"] as? [String: Any?] {
            var model = AlertRuleCondition.ExpressEscalation()
            model.fromMap(value)
            self.expressEscalation = model
        }
        if let value = dict["noDataAlertLevel"] as? String {
            self.noDataAlertLevel = value
        }
        if let value = dict["noDataAppendValue"] as? String {
            self.noDataAppendValue = value
        }
        if let value = dict["noDataPolicy"] as? String {
            self.noDataPolicy = value
        }
        if let value = dict["relation"] as? String {
            self.relation = value
        }
        if let value = dict["simpleEscalation"] as? [String: Any?] {
            var model = AlertRuleCondition.SimpleEscalation()
            model.fromMap(value)
            self.simpleEscalation = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class AlertRuleDataSource : Tea.TeaModel {
    public class DsList : Tea.TeaModel {
        public var project: String?

        public var regionId: String?

        public var store: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.store != nil {
                map["store"] = self.store!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["project"] as? String {
                self.project = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["store"] as? String {
                self.store = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var appType: String?

    public var dsList: [AlertRuleDataSource.DsList]?

    public var instanceId: String?

    public var namespace: String?

    public var regionId: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["appType"] = self.appType!
        }
        if self.dsList != nil {
            var tmp : [Any] = []
            for k in self.dsList! {
                tmp.append(k.toMap())
            }
            map["dsList"] = tmp
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appType"] as? String {
            self.appType = value
        }
        if let value = dict["dsList"] as? [Any?] {
            var tmp : [AlertRuleDataSource.DsList] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleDataSource.DsList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dsList = tmp
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class AlertRuleLabelFilter : Tea.TeaModel {
    public var labels: [String: String]?

    public var opt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.opt != nil {
            map["opt"] = self.opt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["opt"] as? String {
            self.opt = value
        }
    }
}

public class AlertRuleNotification : Tea.TeaModel {
    public var contacts: [String]?

    public var customWebhooks: [String]?

    public var dingWebhooks: [String]?

    public var fsWebhooks: [String]?

    public var groups: [String]?

    public var notifyTime: AlertRuleTimeSpan?

    public var silenceTime: Int64?

    public var slackWebhooks: [String]?

    public var wxWebhooks: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.notifyTime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacts != nil {
            map["contacts"] = self.contacts!
        }
        if self.customWebhooks != nil {
            map["customWebhooks"] = self.customWebhooks!
        }
        if self.dingWebhooks != nil {
            map["dingWebhooks"] = self.dingWebhooks!
        }
        if self.fsWebhooks != nil {
            map["fsWebhooks"] = self.fsWebhooks!
        }
        if self.groups != nil {
            map["groups"] = self.groups!
        }
        if self.notifyTime != nil {
            map["notifyTime"] = self.notifyTime?.toMap()
        }
        if self.silenceTime != nil {
            map["silenceTime"] = self.silenceTime!
        }
        if self.slackWebhooks != nil {
            map["slackWebhooks"] = self.slackWebhooks!
        }
        if self.wxWebhooks != nil {
            map["wxWebhooks"] = self.wxWebhooks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contacts"] as? [String] {
            self.contacts = value
        }
        if let value = dict["customWebhooks"] as? [String] {
            self.customWebhooks = value
        }
        if let value = dict["dingWebhooks"] as? [String] {
            self.dingWebhooks = value
        }
        if let value = dict["fsWebhooks"] as? [String] {
            self.fsWebhooks = value
        }
        if let value = dict["groups"] as? [String] {
            self.groups = value
        }
        if let value = dict["notifyTime"] as? [String: Any?] {
            var model = AlertRuleTimeSpan()
            model.fromMap(value)
            self.notifyTime = model
        }
        if let value = dict["silenceTime"] as? Int64 {
            self.silenceTime = value
        }
        if let value = dict["slackWebhooks"] as? [String] {
            self.slackWebhooks = value
        }
        if let value = dict["wxWebhooks"] as? [String] {
            self.wxWebhooks = value
        }
    }
}

public class AlertRuleNotificationFilter : Tea.TeaModel {
    public var contacts: [String]?

    public var customWebhooks: [String]?

    public var dingWebhooks: [String]?

    public var fsWebhooks: [String]?

    public var groups: [String]?

    public var slackWebhooks: [String]?

    public var wxWebhooks: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacts != nil {
            map["contacts"] = self.contacts!
        }
        if self.customWebhooks != nil {
            map["customWebhooks"] = self.customWebhooks!
        }
        if self.dingWebhooks != nil {
            map["dingWebhooks"] = self.dingWebhooks!
        }
        if self.fsWebhooks != nil {
            map["fsWebhooks"] = self.fsWebhooks!
        }
        if self.groups != nil {
            map["groups"] = self.groups!
        }
        if self.slackWebhooks != nil {
            map["slackWebhooks"] = self.slackWebhooks!
        }
        if self.wxWebhooks != nil {
            map["wxWebhooks"] = self.wxWebhooks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contacts"] as? [String] {
            self.contacts = value
        }
        if let value = dict["customWebhooks"] as? [String] {
            self.customWebhooks = value
        }
        if let value = dict["dingWebhooks"] as? [String] {
            self.dingWebhooks = value
        }
        if let value = dict["fsWebhooks"] as? [String] {
            self.fsWebhooks = value
        }
        if let value = dict["groups"] as? [String] {
            self.groups = value
        }
        if let value = dict["slackWebhooks"] as? [String] {
            self.slackWebhooks = value
        }
        if let value = dict["wxWebhooks"] as? [String] {
            self.wxWebhooks = value
        }
    }
}

public class AlertRuleQuery : Tea.TeaModel {
    public class Queries : Tea.TeaModel {
        public class ApmFilters : Tea.TeaModel {
            public var dim: String?

            public var type: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dim != nil {
                    map["dim"] = self.dim!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dim"] as? String {
                    self.dim = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var apmAlertMetricId: String?

        public var apmFilters: [AlertRuleQuery.Queries.ApmFilters]?

        public var apmGroupBy: [String]?

        public var duration: Int64?

        public var end: Int64?

        public var expr: String?

        public var start: Int64?

        public var timeUnit: String?

        public var window: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apmAlertMetricId != nil {
                map["apmAlertMetricId"] = self.apmAlertMetricId!
            }
            if self.apmFilters != nil {
                var tmp : [Any] = []
                for k in self.apmFilters! {
                    tmp.append(k.toMap())
                }
                map["apmFilters"] = tmp
            }
            if self.apmGroupBy != nil {
                map["apmGroupBy"] = self.apmGroupBy!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.end != nil {
                map["end"] = self.end!
            }
            if self.expr != nil {
                map["expr"] = self.expr!
            }
            if self.start != nil {
                map["start"] = self.start!
            }
            if self.timeUnit != nil {
                map["timeUnit"] = self.timeUnit!
            }
            if self.window != nil {
                map["window"] = self.window!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apmAlertMetricId"] as? String {
                self.apmAlertMetricId = value
            }
            if let value = dict["apmFilters"] as? [Any?] {
                var tmp : [AlertRuleQuery.Queries.ApmFilters] = []
                for v in value {
                    if v != nil {
                        var model = AlertRuleQuery.Queries.ApmFilters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apmFilters = tmp
            }
            if let value = dict["apmGroupBy"] as? [String] {
                self.apmGroupBy = value
            }
            if let value = dict["duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["end"] as? Int64 {
                self.end = value
            }
            if let value = dict["expr"] as? String {
                self.expr = value
            }
            if let value = dict["start"] as? Int64 {
                self.start = value
            }
            if let value = dict["timeUnit"] as? String {
                self.timeUnit = value
            }
            if let value = dict["window"] as? Int64 {
                self.window = value
            }
        }
    }
    public var checkAfterDataComplete: Bool?

    public var dimensions: [[String: String]]?

    public var duration: Int64?

    public var expr: String?

    public var firstJoin: AlertRuleSlsQueryJoin?

    public var groupFieldList: [String]?

    public var groupId: String?

    public var groupType: String?

    public var namespace: String?

    public var queries: [AlertRuleQuery.Queries]?

    public var relationType: String?

    public var secondJoin: AlertRuleSlsQueryJoin?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.firstJoin?.validate()
        try self.secondJoin?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkAfterDataComplete != nil {
            map["checkAfterDataComplete"] = self.checkAfterDataComplete!
        }
        if self.dimensions != nil {
            map["dimensions"] = self.dimensions!
        }
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.expr != nil {
            map["expr"] = self.expr!
        }
        if self.firstJoin != nil {
            map["firstJoin"] = self.firstJoin?.toMap()
        }
        if self.groupFieldList != nil {
            map["groupFieldList"] = self.groupFieldList!
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.groupType != nil {
            map["groupType"] = self.groupType!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.queries != nil {
            var tmp : [Any] = []
            for k in self.queries! {
                tmp.append(k.toMap())
            }
            map["queries"] = tmp
        }
        if self.relationType != nil {
            map["relationType"] = self.relationType!
        }
        if self.secondJoin != nil {
            map["secondJoin"] = self.secondJoin?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkAfterDataComplete"] as? Bool {
            self.checkAfterDataComplete = value
        }
        if let value = dict["dimensions"] as? [[String: String]] {
            self.dimensions = value
        }
        if let value = dict["duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["expr"] as? String {
            self.expr = value
        }
        if let value = dict["firstJoin"] as? [String: Any?] {
            var model = AlertRuleSlsQueryJoin()
            model.fromMap(value)
            self.firstJoin = model
        }
        if let value = dict["groupFieldList"] as? [String] {
            self.groupFieldList = value
        }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["groupType"] as? String {
            self.groupType = value
        }
        if let value = dict["namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["queries"] as? [Any?] {
            var tmp : [AlertRuleQuery.Queries] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleQuery.Queries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queries = tmp
        }
        if let value = dict["relationType"] as? String {
            self.relationType = value
        }
        if let value = dict["secondJoin"] as? [String: Any?] {
            var model = AlertRuleSlsQueryJoin()
            model.fromMap(value)
            self.secondJoin = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class AlertRuleSend : Tea.TeaModel {
    public var action: AlertRuleAction?

    public var notification: AlertRuleNotification?

    public var sendToArms: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.action?.validate()
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["action"] = self.action?.toMap()
        }
        if self.notification != nil {
            map["notification"] = self.notification?.toMap()
        }
        if self.sendToArms != nil {
            map["sendToArms"] = self.sendToArms!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? [String: Any?] {
            var model = AlertRuleAction()
            model.fromMap(value)
            self.action = model
        }
        if let value = dict["notification"] as? [String: Any?] {
            var model = AlertRuleNotification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["sendToArms"] as? Bool {
            self.sendToArms = value
        }
    }
}

public class AlertRuleSlsQueryJoin : Tea.TeaModel {
    public class Conditions : Tea.TeaModel {
        public var firstField: String?

        public var oper: String?

        public var secondField: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.firstField != nil {
                map["firstField"] = self.firstField!
            }
            if self.oper != nil {
                map["oper"] = self.oper!
            }
            if self.secondField != nil {
                map["secondField"] = self.secondField!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["firstField"] as? String {
                self.firstField = value
            }
            if let value = dict["oper"] as? String {
                self.oper = value
            }
            if let value = dict["secondField"] as? String {
                self.secondField = value
            }
        }
    }
    public var conditions: [AlertRuleSlsQueryJoin.Conditions]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["conditions"] = tmp
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["conditions"] as? [Any?] {
            var tmp : [AlertRuleSlsQueryJoin.Conditions] = []
            for v in value {
                if v != nil {
                    var model = AlertRuleSlsQueryJoin.Conditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditions = tmp
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class AlertRuleTimeSpan : Tea.TeaModel {
    public var dayOfWeek: [Int32]?

    public var endTime: String?

    public var gmtOffset: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dayOfWeek != nil {
            map["dayOfWeek"] = self.dayOfWeek!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.gmtOffset != nil {
            map["gmtOffset"] = self.gmtOffset!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dayOfWeek"] as? [Int32] {
            self.dayOfWeek = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["gmtOffset"] as? String {
            self.gmtOffset = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class BizTraceConfig : Tea.TeaModel {
    public var advancedConfig: String?

    public var bizTraceCode: String?

    public var bizTraceId: String?

    public var bizTraceName: String?

    public var createTime: String?

    public var regionId: String?

    public var ruleConfig: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedConfig != nil {
            map["advancedConfig"] = self.advancedConfig!
        }
        if self.bizTraceCode != nil {
            map["bizTraceCode"] = self.bizTraceCode!
        }
        if self.bizTraceId != nil {
            map["bizTraceId"] = self.bizTraceId!
        }
        if self.bizTraceName != nil {
            map["bizTraceName"] = self.bizTraceName!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.ruleConfig != nil {
            map["ruleConfig"] = self.ruleConfig!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["advancedConfig"] as? String {
            self.advancedConfig = value
        }
        if let value = dict["bizTraceCode"] as? String {
            self.bizTraceCode = value
        }
        if let value = dict["bizTraceId"] as? String {
            self.bizTraceId = value
        }
        if let value = dict["bizTraceName"] as? String {
            self.bizTraceName = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ruleConfig"] as? String {
            self.ruleConfig = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class DataStorageItem : Tea.TeaModel {
    public var dataType: String?

    public var project: String?

    public var regionId: String?

    public var storeName: String?

    public var storeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.project != nil {
            map["project"] = self.project!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.storeName != nil {
            map["storeName"] = self.storeName!
        }
        if self.storeType != nil {
            map["storeType"] = self.storeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["project"] as? String {
            self.project = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["storeName"] as? String {
            self.storeName = value
        }
        if let value = dict["storeType"] as? String {
            self.storeType = value
        }
    }
}

public class EntityDiscoverRule : Tea.TeaModel {
    public class Annotations : Tea.TeaModel {
        public var op: String?

        public var tagKey: String?

        public var tagValues: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.op != nil {
                map["op"] = self.op!
            }
            if self.tagKey != nil {
                map["tagKey"] = self.tagKey!
            }
            if self.tagValues != nil {
                map["tagValues"] = self.tagValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["op"] as? String {
                self.op = value
            }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValues"] as? [String] {
                self.tagValues = value
            }
        }
    }
    public class FieldRules : Tea.TeaModel {
        public var fieldKey: String?

        public var fieldValues: [String]?

        public var op: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldKey != nil {
                map["fieldKey"] = self.fieldKey!
            }
            if self.fieldValues != nil {
                map["fieldValues"] = self.fieldValues!
            }
            if self.op != nil {
                map["op"] = self.op!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fieldKey"] as? String {
                self.fieldKey = value
            }
            if let value = dict["fieldValues"] as? [String] {
                self.fieldValues = value
            }
            if let value = dict["op"] as? String {
                self.op = value
            }
        }
    }
    public class IpMatchRule : Tea.TeaModel {
        public var ipCIDR: String?

        public var ipFieldKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipCIDR != nil {
                map["ipCIDR"] = self.ipCIDR!
            }
            if self.ipFieldKey != nil {
                map["ipFieldKey"] = self.ipFieldKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ipCIDR"] as? String {
                self.ipCIDR = value
            }
            if let value = dict["ipFieldKey"] as? String {
                self.ipFieldKey = value
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var op: String?

        public var tagKey: String?

        public var tagValues: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.op != nil {
                map["op"] = self.op!
            }
            if self.tagKey != nil {
                map["tagKey"] = self.tagKey!
            }
            if self.tagValues != nil {
                map["tagValues"] = self.tagValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["op"] as? String {
                self.op = value
            }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValues"] as? [String] {
                self.tagValues = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var op: String?

        public var tagKey: String?

        public var tagValues: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.op != nil {
                map["op"] = self.op!
            }
            if self.tagKey != nil {
                map["tagKey"] = self.tagKey!
            }
            if self.tagValues != nil {
                map["tagValues"] = self.tagValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["op"] as? String {
                self.op = value
            }
            if let value = dict["tagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["tagValues"] as? [String] {
                self.tagValues = value
            }
        }
    }
    public var annotations: [EntityDiscoverRule.Annotations]?

    public var entityTypes: [String]?

    public var fieldRules: [EntityDiscoverRule.FieldRules]?

    public var instanceIds: [String]?

    public var ipMatchRule: [EntityDiscoverRule.IpMatchRule]?

    public var labels: [EntityDiscoverRule.Labels]?

    public var regionIds: [String]?

    public var resourceGroupId: String?

    public var tags: [EntityDiscoverRule.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotations != nil {
            var tmp : [Any] = []
            for k in self.annotations! {
                tmp.append(k.toMap())
            }
            map["annotations"] = tmp
        }
        if self.entityTypes != nil {
            map["entityTypes"] = self.entityTypes!
        }
        if self.fieldRules != nil {
            var tmp : [Any] = []
            for k in self.fieldRules! {
                tmp.append(k.toMap())
            }
            map["fieldRules"] = tmp
        }
        if self.instanceIds != nil {
            map["instanceIds"] = self.instanceIds!
        }
        if self.ipMatchRule != nil {
            var tmp : [Any] = []
            for k in self.ipMatchRule! {
                tmp.append(k.toMap())
            }
            map["ipMatchRule"] = tmp
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["labels"] = tmp
        }
        if self.regionIds != nil {
            map["regionIds"] = self.regionIds!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["annotations"] as? [Any?] {
            var tmp : [EntityDiscoverRule.Annotations] = []
            for v in value {
                if v != nil {
                    var model = EntityDiscoverRule.Annotations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.annotations = tmp
        }
        if let value = dict["entityTypes"] as? [String] {
            self.entityTypes = value
        }
        if let value = dict["fieldRules"] as? [Any?] {
            var tmp : [EntityDiscoverRule.FieldRules] = []
            for v in value {
                if v != nil {
                    var model = EntityDiscoverRule.FieldRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fieldRules = tmp
        }
        if let value = dict["instanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ipMatchRule"] as? [Any?] {
            var tmp : [EntityDiscoverRule.IpMatchRule] = []
            for v in value {
                if v != nil {
                    var model = EntityDiscoverRule.IpMatchRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipMatchRule = tmp
        }
        if let value = dict["labels"] as? [Any?] {
            var tmp : [EntityDiscoverRule.Labels] = []
            for v in value {
                if v != nil {
                    var model = EntityDiscoverRule.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["regionIds"] as? [String] {
            self.regionIds = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [EntityDiscoverRule.Tags] = []
            for v in value {
                if v != nil {
                    var model = EntityDiscoverRule.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class EntityGroupBase : Tea.TeaModel {
    public class EntityQueries : Tea.TeaModel {
        public var entityType: String?

        public var spl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityType != nil {
                map["entityType"] = self.entityType!
            }
            if self.spl != nil {
                map["spl"] = self.spl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["entityType"] as? String {
                self.entityType = value
            }
            if let value = dict["spl"] as? String {
                self.spl = value
            }
        }
    }
    public var description_: String?

    public var entityGroupId: String?

    public var entityGroupName: String?

    public var entityQueries: [EntityGroupBase.EntityQueries]?

    public var entityRules: EntityDiscoverRule?

    public var regionId: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.entityRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.entityGroupId != nil {
            map["entityGroupId"] = self.entityGroupId!
        }
        if self.entityGroupName != nil {
            map["entityGroupName"] = self.entityGroupName!
        }
        if self.entityQueries != nil {
            var tmp : [Any] = []
            for k in self.entityQueries! {
                tmp.append(k.toMap())
            }
            map["entityQueries"] = tmp
        }
        if self.entityRules != nil {
            map["entityRules"] = self.entityRules?.toMap()
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["entityGroupId"] as? String {
            self.entityGroupId = value
        }
        if let value = dict["entityGroupName"] as? String {
            self.entityGroupName = value
        }
        if let value = dict["entityQueries"] as? [Any?] {
            var tmp : [EntityGroupBase.EntityQueries] = []
            for v in value {
                if v != nil {
                    var model = EntityGroupBase.EntityQueries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entityQueries = tmp
        }
        if let value = dict["entityRules"] as? [String: Any?] {
            var model = EntityDiscoverRule()
            model.fromMap(value)
            self.entityRules = model
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class FilterSetting : Tea.TeaModel {
    public class Conditions : Tea.TeaModel {
        public var field: String?

        public var op: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["field"] = self.field!
            }
            if self.op != nil {
                map["op"] = self.op!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["field"] as? String {
                self.field = value
            }
            if let value = dict["op"] as? String {
                self.op = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var conditions: [FilterSetting.Conditions]?

    public var expression: String?

    public var relation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["conditions"] = tmp
        }
        if self.expression != nil {
            map["expression"] = self.expression!
        }
        if self.relation != nil {
            map["relation"] = self.relation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["conditions"] as? [Any?] {
            var tmp : [FilterSetting.Conditions] = []
            for v in value {
                if v != nil {
                    var model = FilterSetting.Conditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditions = tmp
        }
        if let value = dict["expression"] as? String {
            self.expression = value
        }
        if let value = dict["relation"] as? String {
            self.relation = value
        }
    }
}

public class IncidentContactStruct : Tea.TeaModel {
    public var channel: [String]?

    public var contactId: String?

    public var contactType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.contactId != nil {
            map["contactId"] = self.contactId!
        }
        if self.contactType != nil {
            map["contactType"] = self.contactType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? [String] {
            self.channel = value
        }
        if let value = dict["contactId"] as? String {
            self.contactId = value
        }
        if let value = dict["contactType"] as? String {
            self.contactType = value
        }
    }
}

public class IncidentEscalationStageStruct : Tea.TeaModel {
    public var contact: [IncidentContactStruct]?

    public var cycleNotifyCount: Int32?

    public var cycleNotifyTime: Int32?

    public var description_: String?

    public var effectTime: String?

    public var name: String?

    public var stageIndex: Int32?

    public var timeZone: String?

    public var waitToNextStageTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contact != nil {
            var tmp : [Any] = []
            for k in self.contact! {
                tmp.append(k.toMap())
            }
            map["contact"] = tmp
        }
        if self.cycleNotifyCount != nil {
            map["cycleNotifyCount"] = self.cycleNotifyCount!
        }
        if self.cycleNotifyTime != nil {
            map["cycleNotifyTime"] = self.cycleNotifyTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effectTime != nil {
            map["effectTime"] = self.effectTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.stageIndex != nil {
            map["stageIndex"] = self.stageIndex!
        }
        if self.timeZone != nil {
            map["timeZone"] = self.timeZone!
        }
        if self.waitToNextStageTime != nil {
            map["waitToNextStageTime"] = self.waitToNextStageTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contact"] as? [Any?] {
            var tmp : [IncidentContactStruct] = []
            for v in value {
                if v != nil {
                    var model = IncidentContactStruct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contact = tmp
        }
        if let value = dict["cycleNotifyCount"] as? Int32 {
            self.cycleNotifyCount = value
        }
        if let value = dict["cycleNotifyTime"] as? Int32 {
            self.cycleNotifyTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["effectTime"] as? String {
            self.effectTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["stageIndex"] as? Int32 {
            self.stageIndex = value
        }
        if let value = dict["timeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["waitToNextStageTime"] as? Int32 {
            self.waitToNextStageTime = value
        }
    }
}

public class IncidentEscalationStruct : Tea.TeaModel {
    public var createTime: Int64?

    public var description_: String?

    public var incidentEscalationId: String?

    public var modifyTime: Int64?

    public var name: String?

    public var regionId: String?

    public var stage: [IncidentEscalationStageStruct]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.incidentEscalationId != nil {
            map["incidentEscalationId"] = self.incidentEscalationId!
        }
        if self.modifyTime != nil {
            map["modifyTime"] = self.modifyTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.stage != nil {
            var tmp : [Any] = []
            for k in self.stage! {
                tmp.append(k.toMap())
            }
            map["stage"] = tmp
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["incidentEscalationId"] as? String {
            self.incidentEscalationId = value
        }
        if let value = dict["modifyTime"] as? Int64 {
            self.modifyTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["stage"] as? [Any?] {
            var tmp : [IncidentEscalationStageStruct] = []
            for v in value {
                if v != nil {
                    var model = IncidentEscalationStageStruct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stage = tmp
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class IncidentEventStruct : Tea.TeaModel {
    public var autoRecoverTime: Int64?

    public var content: String?

    public var count: Int32?

    public var dimension: [String: String]?

    public var groupBy: [String: String]?

    public var incidentEventId: String?

    public var incidentId: String?

    public var lastTime: Int64?

    public var recoverTime: Int64?

    public var resource: [String: String]?

    public var status: Int64?

    public var time: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRecoverTime != nil {
            map["autoRecoverTime"] = self.autoRecoverTime!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.dimension != nil {
            map["dimension"] = self.dimension!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.incidentEventId != nil {
            map["incidentEventId"] = self.incidentEventId!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.lastTime != nil {
            map["lastTime"] = self.lastTime!
        }
        if self.recoverTime != nil {
            map["recoverTime"] = self.recoverTime!
        }
        if self.resource != nil {
            map["resource"] = self.resource!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoRecoverTime"] as? Int64 {
            self.autoRecoverTime = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["count"] as? Int32 {
            self.count = value
        }
        if let value = dict["dimension"] as? [String: String] {
            self.dimension = value
        }
        if let value = dict["groupBy"] as? [String: String] {
            self.groupBy = value
        }
        if let value = dict["incidentEventId"] as? String {
            self.incidentEventId = value
        }
        if let value = dict["incidentId"] as? String {
            self.incidentId = value
        }
        if let value = dict["lastTime"] as? Int64 {
            self.lastTime = value
        }
        if let value = dict["recoverTime"] as? Int64 {
            self.recoverTime = value
        }
        if let value = dict["resource"] as? [String: String] {
            self.resource = value
        }
        if let value = dict["status"] as? Int64 {
            self.status = value
        }
        if let value = dict["time"] as? String {
            self.time = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class IncidentMemberStruct : Tea.TeaModel {
    public class Acknowledge : Tea.TeaModel {
        public var breakLevel: String?

        public var verifyTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.breakLevel != nil {
                map["breakLevel"] = self.breakLevel!
            }
            if self.verifyTime != nil {
                map["verifyTime"] = self.verifyTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["breakLevel"] as? String {
                self.breakLevel = value
            }
            if let value = dict["verifyTime"] as? Int64 {
                self.verifyTime = value
            }
        }
    }
    public class Contacts : Tea.TeaModel {
        public var channel: String?

        public var contactMask: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channel != nil {
                map["channel"] = self.channel!
            }
            if self.contactMask != nil {
                map["contactMask"] = self.contactMask!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["channel"] as? String {
                self.channel = value
            }
            if let value = dict["contactMask"] as? String {
                self.contactMask = value
            }
        }
    }
    public class Escalation : Tea.TeaModel {
        public var description_: String?

        public var incidentEscalationId: String?

        public var name: String?

        public var stageIndex: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.incidentEscalationId != nil {
                map["incidentEscalationId"] = self.incidentEscalationId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.stageIndex != nil {
                map["stageIndex"] = self.stageIndex!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["incidentEscalationId"] as? String {
                self.incidentEscalationId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["stageIndex"] as? String {
                self.stageIndex = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
        }
    }
    public class ScheduleGroup : Tea.TeaModel {
        public var contactId: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactId != nil {
                map["contactId"] = self.contactId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contactId"] as? String {
                self.contactId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var acknowledge: IncidentMemberStruct.Acknowledge?

    public var contactId: String?

    public var contacts: [IncidentMemberStruct.Contacts]?

    public var escalation: IncidentMemberStruct.Escalation?

    public var incidentId: String?

    public var incidentMemberId: String?

    public var scheduleGroup: IncidentMemberStruct.ScheduleGroup?

    public var time: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.acknowledge?.validate()
        try self.escalation?.validate()
        try self.scheduleGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acknowledge != nil {
            map["acknowledge"] = self.acknowledge?.toMap()
        }
        if self.contactId != nil {
            map["contactId"] = self.contactId!
        }
        if self.contacts != nil {
            var tmp : [Any] = []
            for k in self.contacts! {
                tmp.append(k.toMap())
            }
            map["contacts"] = tmp
        }
        if self.escalation != nil {
            map["escalation"] = self.escalation?.toMap()
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentMemberId != nil {
            map["incidentMemberId"] = self.incidentMemberId!
        }
        if self.scheduleGroup != nil {
            map["scheduleGroup"] = self.scheduleGroup?.toMap()
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["acknowledge"] as? [String: Any?] {
            var model = IncidentMemberStruct.Acknowledge()
            model.fromMap(value)
            self.acknowledge = model
        }
        if let value = dict["contactId"] as? String {
            self.contactId = value
        }
        if let value = dict["contacts"] as? [Any?] {
            var tmp : [IncidentMemberStruct.Contacts] = []
            for v in value {
                if v != nil {
                    var model = IncidentMemberStruct.Contacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contacts = tmp
        }
        if let value = dict["escalation"] as? [String: Any?] {
            var model = IncidentMemberStruct.Escalation()
            model.fromMap(value)
            self.escalation = model
        }
        if let value = dict["incidentId"] as? String {
            self.incidentId = value
        }
        if let value = dict["incidentMemberId"] as? String {
            self.incidentMemberId = value
        }
        if let value = dict["scheduleGroup"] as? [String: Any?] {
            var model = IncidentMemberStruct.ScheduleGroup()
            model.fromMap(value)
            self.scheduleGroup = model
        }
        if let value = dict["time"] as? Int64 {
            self.time = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class IncidentNoteStruct : Tea.TeaModel {
    public class Operator_ : Tea.TeaModel {
        public var contact: String?

        public var contactId: String?

        public var name: String?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contact != nil {
                map["contact"] = self.contact!
            }
            if self.contactId != nil {
                map["contactId"] = self.contactId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contact"] as? String {
                self.contact = value
            }
            if let value = dict["contactId"] as? String {
                self.contactId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["userId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var content: String?

    public var format: String?

    public var incidentId: String?

    public var noteId: String?

    public var operator_: IncidentNoteStruct.Operator_?

    public var time: Int64?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operator_?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.format != nil {
            map["format"] = self.format!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.noteId != nil {
            map["noteId"] = self.noteId!
        }
        if self.operator_ != nil {
            map["operator"] = self.operator_?.toMap()
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["format"] as? String {
            self.format = value
        }
        if let value = dict["incidentId"] as? String {
            self.incidentId = value
        }
        if let value = dict["noteId"] as? String {
            self.noteId = value
        }
        if let value = dict["operator"] as? [String: Any?] {
            var model = IncidentNoteStruct.Operator_()
            model.fromMap(value)
            self.operator_ = model
        }
        if let value = dict["time"] as? Int64 {
            self.time = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class IncidentPlanCorporationStruct : Tea.TeaModel {
    public var channel: String?

    public var robotId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["channel"] = self.channel!
        }
        if self.robotId != nil {
            map["robotId"] = self.robotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["robotId"] as? String {
            self.robotId = value
        }
    }
}

public class IncidentPlanFieldPath : Tea.TeaModel {
    public var fieldAlias: String?

    public var fieldPath: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fieldAlias != nil {
            map["fieldAlias"] = self.fieldAlias!
        }
        if self.fieldPath != nil {
            map["fieldPath"] = self.fieldPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fieldAlias"] as? String {
            self.fieldAlias = value
        }
        if let value = dict["fieldPath"] as? [String] {
            self.fieldPath = value
        }
    }
}

public class IncidentPlanStruct : Tea.TeaModel {
    public var autoRecoverSeconds: Int32?

    public var closeExpire: Int64?

    public var corporation: [IncidentPlanCorporationStruct]?

    public var description_: String?

    public var escalationId: [String]?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var groupBy: [IncidentPlanFieldPath]?

    public var incidentPlanId: String?

    public var name: String?

    public var resourceFiled: [IncidentPlanFieldPath]?

    public var status: String?

    public var userId: Int64?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRecoverSeconds != nil {
            map["autoRecoverSeconds"] = self.autoRecoverSeconds!
        }
        if self.closeExpire != nil {
            map["closeExpire"] = self.closeExpire!
        }
        if self.corporation != nil {
            var tmp : [Any] = []
            for k in self.corporation! {
                tmp.append(k.toMap())
            }
            map["corporation"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.escalationId != nil {
            map["escalationId"] = self.escalationId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.groupBy != nil {
            var tmp : [Any] = []
            for k in self.groupBy! {
                tmp.append(k.toMap())
            }
            map["groupBy"] = tmp
        }
        if self.incidentPlanId != nil {
            map["incidentPlanId"] = self.incidentPlanId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceFiled != nil {
            var tmp : [Any] = []
            for k in self.resourceFiled! {
                tmp.append(k.toMap())
            }
            map["resourceFiled"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["autoRecoverSeconds"] as? Int32 {
            self.autoRecoverSeconds = value
        }
        if let value = dict["closeExpire"] as? Int64 {
            self.closeExpire = value
        }
        if let value = dict["corporation"] as? [Any?] {
            var tmp : [IncidentPlanCorporationStruct] = []
            for v in value {
                if v != nil {
                    var model = IncidentPlanCorporationStruct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.corporation = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["escalationId"] as? [String] {
            self.escalationId = value
        }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["groupBy"] as? [Any?] {
            var tmp : [IncidentPlanFieldPath] = []
            for v in value {
                if v != nil {
                    var model = IncidentPlanFieldPath()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groupBy = tmp
        }
        if let value = dict["incidentPlanId"] as? String {
            self.incidentPlanId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceFiled"] as? [Any?] {
            var tmp : [IncidentPlanFieldPath] = []
            for v in value {
                if v != nil {
                    var model = IncidentPlanFieldPath()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceFiled = tmp
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class IncidentResourceDetail : Tea.TeaModel {
    public var extraId: String?

    public var resourceId: [String: Any]?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraId != nil {
            map["extraId"] = self.extraId!
        }
        if self.resourceId != nil {
            map["resourceId"] = self.resourceId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["extraId"] as? String {
            self.extraId = value
        }
        if let value = dict["resourceId"] as? [String: Any] {
            self.resourceId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class IncidentResourceStruct : Tea.TeaModel {
    public var description_: String?

    public var incidentId: String?

    public var incidentResourceId: String?

    public var resource: IncidentResourceDetail?

    public var source: String?

    public var time: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentResourceId != nil {
            map["incidentResourceId"] = self.incidentResourceId!
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["incidentId"] as? String {
            self.incidentId = value
        }
        if let value = dict["incidentResourceId"] as? String {
            self.incidentResourceId = value
        }
        if let value = dict["resource"] as? [String: Any?] {
            var model = IncidentResourceDetail()
            model.fromMap(value)
            self.resource = model
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["time"] as? Int64 {
            self.time = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class IncidentStruct : Tea.TeaModel {
    public var content: String?

    public var escalations: [IncidentEscalationStruct]?

    public var incidentId: String?

    public var incidentPlan: IncidentPlanStruct?

    public var resource: IncidentResourceDetail?

    public var severity: String?

    public var status: String?

    public var time: Int64?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.incidentPlan?.validate()
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.escalations != nil {
            var tmp : [Any] = []
            for k in self.escalations! {
                tmp.append(k.toMap())
            }
            map["escalations"] = tmp
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentPlan != nil {
            map["incidentPlan"] = self.incidentPlan?.toMap()
        }
        if self.resource != nil {
            map["resource"] = self.resource?.toMap()
        }
        if self.severity != nil {
            map["severity"] = self.severity!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["escalations"] as? [Any?] {
            var tmp : [IncidentEscalationStruct] = []
            for v in value {
                if v != nil {
                    var model = IncidentEscalationStruct()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.escalations = tmp
        }
        if let value = dict["incidentId"] as? String {
            self.incidentId = value
        }
        if let value = dict["incidentPlan"] as? [String: Any?] {
            var model = IncidentPlanStruct()
            model.fromMap(value)
            self.incidentPlan = model
        }
        if let value = dict["resource"] as? [String: Any?] {
            var model = IncidentResourceDetail()
            model.fromMap(value)
            self.resource = model
        }
        if let value = dict["severity"] as? String {
            self.severity = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["time"] as? Int64 {
            self.time = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class IncidentTimeline : Tea.TeaModel {
    public var childType: String?

    public var content: String?

    public var incidentId: String?

    public var incidentTimelineId: String?

    public var time: Int64?

    public var timelineId: String?

    public var title: String?

    public var type: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childType != nil {
            map["childType"] = self.childType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.incidentId != nil {
            map["incidentId"] = self.incidentId!
        }
        if self.incidentTimelineId != nil {
            map["incidentTimelineId"] = self.incidentTimelineId!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.timelineId != nil {
            map["timelineId"] = self.timelineId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["childType"] as? String {
            self.childType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["incidentId"] as? String {
            self.incidentId = value
        }
        if let value = dict["incidentTimelineId"] as? String {
            self.incidentTimelineId = value
        }
        if let value = dict["time"] as? Int64 {
            self.time = value
        }
        if let value = dict["timelineId"] as? String {
            self.timelineId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class MaintainWindowForModify : Tea.TeaModel {
    public class EffectTimeRange : Tea.TeaModel {
        public var dayInWeek: [Int32]?

        public var endTimeInMinute: Int32?

        public var startTimeInMinute: Int32?

        public var timeZone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dayInWeek != nil {
                map["dayInWeek"] = self.dayInWeek!
            }
            if self.endTimeInMinute != nil {
                map["endTimeInMinute"] = self.endTimeInMinute!
            }
            if self.startTimeInMinute != nil {
                map["startTimeInMinute"] = self.startTimeInMinute!
            }
            if self.timeZone != nil {
                map["timeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dayInWeek"] as? [Int32] {
                self.dayInWeek = value
            }
            if let value = dict["endTimeInMinute"] as? Int32 {
                self.endTimeInMinute = value
            }
            if let value = dict["startTimeInMinute"] as? Int32 {
                self.startTimeInMinute = value
            }
            if let value = dict["timeZone"] as? String {
                self.timeZone = value
            }
        }
    }
    public var description_: String?

    public var effectTimeRange: MaintainWindowForModify.EffectTimeRange?

    public var effective: String?

    public var endTime: String?

    public var filterSetting: FilterSetting?

    public var maintainWindowName: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.effectTimeRange?.validate()
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effectTimeRange != nil {
            map["effectTimeRange"] = self.effectTimeRange?.toMap()
        }
        if self.effective != nil {
            map["effective"] = self.effective!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.maintainWindowName != nil {
            map["maintainWindowName"] = self.maintainWindowName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["effectTimeRange"] as? [String: Any?] {
            var model = MaintainWindowForModify.EffectTimeRange()
            model.fromMap(value)
            self.effectTimeRange = model
        }
        if let value = dict["effective"] as? String {
            self.effective = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["maintainWindowName"] as? String {
            self.maintainWindowName = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class MaintainWindowForView : Tea.TeaModel {
    public class EffectTimeRange : Tea.TeaModel {
        public var dayInWeek: [Int32]?

        public var endTimeInMinute: Int32?

        public var startTimeInMinute: Int32?

        public var timeZone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dayInWeek != nil {
                map["dayInWeek"] = self.dayInWeek!
            }
            if self.endTimeInMinute != nil {
                map["endTimeInMinute"] = self.endTimeInMinute!
            }
            if self.startTimeInMinute != nil {
                map["startTimeInMinute"] = self.startTimeInMinute!
            }
            if self.timeZone != nil {
                map["timeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dayInWeek"] as? [Int32] {
                self.dayInWeek = value
            }
            if let value = dict["endTimeInMinute"] as? Int32 {
                self.endTimeInMinute = value
            }
            if let value = dict["startTimeInMinute"] as? Int32 {
                self.startTimeInMinute = value
            }
            if let value = dict["timeZone"] as? String {
                self.timeZone = value
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var effectTimeRange: MaintainWindowForView.EffectTimeRange?

    public var effective: String?

    public var enable: Bool?

    public var endTime: String?

    public var filterSetting: FilterSetting?

    public var maintainWindowId: String?

    public var maintainWindowName: String?

    public var startTime: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.effectTimeRange?.validate()
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.effectTimeRange != nil {
            map["effectTimeRange"] = self.effectTimeRange?.toMap()
        }
        if self.effective != nil {
            map["effective"] = self.effective!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.maintainWindowId != nil {
            map["maintainWindowId"] = self.maintainWindowId!
        }
        if self.maintainWindowName != nil {
            map["maintainWindowName"] = self.maintainWindowName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["effectTimeRange"] as? [String: Any?] {
            var model = MaintainWindowForView.EffectTimeRange()
            model.fromMap(value)
            self.effectTimeRange = model
        }
        if let value = dict["effective"] as? String {
            self.effective = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["maintainWindowId"] as? String {
            self.maintainWindowId = value
        }
        if let value = dict["maintainWindowName"] as? String {
            self.maintainWindowName = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class MergeContact : Tea.TeaModel {
    public var email: String?

    public var emailVerify: Bool?

    public var extend: [String: Any]?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var identifier: String?

    public var lang: String?

    public var name: String?

    public var phone: String?

    public var phoneCode: String?

    public var phoneVerify: Bool?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.emailVerify != nil {
            map["emailVerify"] = self.emailVerify!
        }
        if self.extend != nil {
            map["extend"] = self.extend!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        if self.phoneCode != nil {
            map["phoneCode"] = self.phoneCode!
        }
        if self.phoneVerify != nil {
            map["phoneVerify"] = self.phoneVerify!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["email"] as? String {
            self.email = value
        }
        if let value = dict["emailVerify"] as? Bool {
            self.emailVerify = value
        }
        if let value = dict["extend"] as? [String: Any] {
            self.extend = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["lang"] as? String {
            self.lang = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["phone"] as? String {
            self.phone = value
        }
        if let value = dict["phoneCode"] as? String {
            self.phoneCode = value
        }
        if let value = dict["phoneVerify"] as? Bool {
            self.phoneVerify = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class MergeContactGroup : Tea.TeaModel {
    public var contacts: [String]?

    public var extend: [String: Any]?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var identifier: String?

    public var name: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacts != nil {
            map["contacts"] = self.contacts!
        }
        if self.extend != nil {
            map["extend"] = self.extend!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contacts"] as? [String] {
            self.contacts = value
        }
        if let value = dict["extend"] as? [String: Any] {
            self.extend = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
    }
}

public class MergeRobot : Tea.TeaModel {
    public class Extend : Tea.TeaModel {
        public var cardTemplate: String?

        public var dailyNoc: Bool?

        public var dailyNocTime: String?

        public var dingSignKey: String?

        public var enableOutgoing: Bool?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cardTemplate != nil {
                map["cardTemplate"] = self.cardTemplate!
            }
            if self.dailyNoc != nil {
                map["dailyNoc"] = self.dailyNoc!
            }
            if self.dailyNocTime != nil {
                map["dailyNocTime"] = self.dailyNocTime!
            }
            if self.dingSignKey != nil {
                map["dingSignKey"] = self.dingSignKey!
            }
            if self.enableOutgoing != nil {
                map["enableOutgoing"] = self.enableOutgoing!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cardTemplate"] as? String {
                self.cardTemplate = value
            }
            if let value = dict["dailyNoc"] as? Bool {
                self.dailyNoc = value
            }
            if let value = dict["dailyNocTime"] as? String {
                self.dailyNocTime = value
            }
            if let value = dict["dingSignKey"] as? String {
                self.dingSignKey = value
            }
            if let value = dict["enableOutgoing"] as? Bool {
                self.enableOutgoing = value
            }
            if let value = dict["token"] as? String {
                self.token = value
            }
        }
    }
    public var createTime: String?

    public var extend: MergeRobot.Extend?

    public var gmtModified: String?

    public var identifier: String?

    public var lang: String?

    public var name: String?

    public var source: String?

    public var type: String?

    public var webhook: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extend?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.extend != nil {
            map["extend"] = self.extend?.toMap()
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.webhook != nil {
            map["webhook"] = self.webhook!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["extend"] as? [String: Any?] {
            var model = MergeRobot.Extend()
            model.fromMap(value)
            self.extend = model
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["lang"] as? String {
            self.lang = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["webhook"] as? String {
            self.webhook = value
        }
    }
}

public class MergeWebhook : Tea.TeaModel {
    public var contentType: String?

    public var extend: String?

    public var gmtCreate: String?

    public var gmtModified: [String: Any]?

    public var headers: String?

    public var identifier: String?

    public var lang: String?

    public var method: String?

    public var name: String?

    public var source: String?

    public var type: String?

    public var webhook: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.extend != nil {
            map["extend"] = self.extend!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.webhook != nil {
            map["webhook"] = self.webhook!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["extend"] as? String {
            self.extend = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? [String: Any] {
            self.gmtModified = value
        }
        if let value = dict["headers"] as? String {
            self.headers = value
        }
        if let value = dict["identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["lang"] as? String {
            self.lang = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["webhook"] as? String {
            self.webhook = value
        }
    }
}

public class NotifyStrategyForModify : Tea.TeaModel {
    public class CustomTemplateEntries : Tea.TeaModel {
        public var targetType: String?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["targetType"] as? String {
                self.targetType = value
            }
            if let value = dict["templateUuid"] as? String {
                self.templateUuid = value
            }
        }
    }
    public class GroupingSetting : Tea.TeaModel {
        public var groupingKeys: [String]?

        public var periodMin: Int32?

        public var silenceSec: Int32?

        public var times: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupingKeys != nil {
                map["groupingKeys"] = self.groupingKeys!
            }
            if self.periodMin != nil {
                map["periodMin"] = self.periodMin!
            }
            if self.silenceSec != nil {
                map["silenceSec"] = self.silenceSec!
            }
            if self.times != nil {
                map["times"] = self.times!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupingKeys"] as? [String] {
                self.groupingKeys = value
            }
            if let value = dict["periodMin"] as? Int32 {
                self.periodMin = value
            }
            if let value = dict["silenceSec"] as? Int32 {
                self.silenceSec = value
            }
            if let value = dict["times"] as? Int32 {
                self.times = value
            }
        }
    }
    public class Routes : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public var channelType: String?

            public var enabledSubChannels: [String]?

            public var receivers: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelType != nil {
                    map["channelType"] = self.channelType!
                }
                if self.enabledSubChannels != nil {
                    map["enabledSubChannels"] = self.enabledSubChannels!
                }
                if self.receivers != nil {
                    map["receivers"] = self.receivers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["channelType"] as? String {
                    self.channelType = value
                }
                if let value = dict["enabledSubChannels"] as? [String] {
                    self.enabledSubChannels = value
                }
                if let value = dict["receivers"] as? [String] {
                    self.receivers = value
                }
            }
        }
        public class EffectTimeRange : Tea.TeaModel {
            public var dayInWeek: [Int32]?

            public var endTimeInMinute: Int32?

            public var startTimeInMinute: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dayInWeek != nil {
                    map["dayInWeek"] = self.dayInWeek!
                }
                if self.endTimeInMinute != nil {
                    map["endTimeInMinute"] = self.endTimeInMinute!
                }
                if self.startTimeInMinute != nil {
                    map["startTimeInMinute"] = self.startTimeInMinute!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dayInWeek"] as? [Int32] {
                    self.dayInWeek = value
                }
                if let value = dict["endTimeInMinute"] as? Int32 {
                    self.endTimeInMinute = value
                }
                if let value = dict["startTimeInMinute"] as? Int32 {
                    self.startTimeInMinute = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var channels: [NotifyStrategyForModify.Routes.Channels]?

        public var effectTimeRange: NotifyStrategyForModify.Routes.EffectTimeRange?

        public var filterSetting: FilterSetting?

        public var severities: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.effectTimeRange?.validate()
            try self.filterSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["channels"] = tmp
            }
            if self.effectTimeRange != nil {
                map["effectTimeRange"] = self.effectTimeRange?.toMap()
            }
            if self.filterSetting != nil {
                map["filterSetting"] = self.filterSetting?.toMap()
            }
            if self.severities != nil {
                map["severities"] = self.severities!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["channels"] as? [Any?] {
                var tmp : [NotifyStrategyForModify.Routes.Channels] = []
                for v in value {
                    if v != nil {
                        var model = NotifyStrategyForModify.Routes.Channels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.channels = tmp
            }
            if let value = dict["effectTimeRange"] as? [String: Any?] {
                var model = NotifyStrategyForModify.Routes.EffectTimeRange()
                model.fromMap(value)
                self.effectTimeRange = model
            }
            if let value = dict["filterSetting"] as? [String: Any?] {
                var model = FilterSetting()
                model.fromMap(value)
                self.filterSetting = model
            }
            if let value = dict["severities"] as? [String] {
                self.severities = value
            }
        }
    }
    public var customTemplateEntries: [NotifyStrategyForModify.CustomTemplateEntries]?

    public var description_: String?

    public var groupingSetting: NotifyStrategyForModify.GroupingSetting?

    public var ignoreRestoredNotification: Bool?

    public var notifyStrategyName: String?

    public var routes: [NotifyStrategyForModify.Routes]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customTemplateEntries != nil {
            var tmp : [Any] = []
            for k in self.customTemplateEntries! {
                tmp.append(k.toMap())
            }
            map["customTemplateEntries"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.groupingSetting != nil {
            map["groupingSetting"] = self.groupingSetting?.toMap()
        }
        if self.ignoreRestoredNotification != nil {
            map["ignoreRestoredNotification"] = self.ignoreRestoredNotification!
        }
        if self.notifyStrategyName != nil {
            map["notifyStrategyName"] = self.notifyStrategyName!
        }
        if self.routes != nil {
            var tmp : [Any] = []
            for k in self.routes! {
                tmp.append(k.toMap())
            }
            map["routes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["customTemplateEntries"] as? [Any?] {
            var tmp : [NotifyStrategyForModify.CustomTemplateEntries] = []
            for v in value {
                if v != nil {
                    var model = NotifyStrategyForModify.CustomTemplateEntries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customTemplateEntries = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["groupingSetting"] as? [String: Any?] {
            var model = NotifyStrategyForModify.GroupingSetting()
            model.fromMap(value)
            self.groupingSetting = model
        }
        if let value = dict["ignoreRestoredNotification"] as? Bool {
            self.ignoreRestoredNotification = value
        }
        if let value = dict["notifyStrategyName"] as? String {
            self.notifyStrategyName = value
        }
        if let value = dict["routes"] as? [Any?] {
            var tmp : [NotifyStrategyForModify.Routes] = []
            for v in value {
                if v != nil {
                    var model = NotifyStrategyForModify.Routes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.routes = tmp
        }
    }
}

public class NotifyStrategyForView : Tea.TeaModel {
    public class CustomTemplateEntries : Tea.TeaModel {
        public var targetType: String?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["targetType"] as? String {
                self.targetType = value
            }
            if let value = dict["templateUuid"] as? String {
                self.templateUuid = value
            }
        }
    }
    public class GroupingSetting : Tea.TeaModel {
        public var groupingKeys: [String]?

        public var periodMin: Int32?

        public var silenceSec: Int32?

        public var times: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupingKeys != nil {
                map["groupingKeys"] = self.groupingKeys!
            }
            if self.periodMin != nil {
                map["periodMin"] = self.periodMin!
            }
            if self.silenceSec != nil {
                map["silenceSec"] = self.silenceSec!
            }
            if self.times != nil {
                map["times"] = self.times!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupingKeys"] as? [String] {
                self.groupingKeys = value
            }
            if let value = dict["periodMin"] as? Int32 {
                self.periodMin = value
            }
            if let value = dict["silenceSec"] as? Int32 {
                self.silenceSec = value
            }
            if let value = dict["times"] as? Int32 {
                self.times = value
            }
        }
    }
    public class Routes : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public var channelType: String?

            public var enabledSubChannels: [String]?

            public var receivers: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelType != nil {
                    map["channelType"] = self.channelType!
                }
                if self.enabledSubChannels != nil {
                    map["enabledSubChannels"] = self.enabledSubChannels!
                }
                if self.receivers != nil {
                    map["receivers"] = self.receivers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["channelType"] as? String {
                    self.channelType = value
                }
                if let value = dict["enabledSubChannels"] as? [String] {
                    self.enabledSubChannels = value
                }
                if let value = dict["receivers"] as? [String] {
                    self.receivers = value
                }
            }
        }
        public class EffectTimeRange : Tea.TeaModel {
            public var dayInWeek: [Int32]?

            public var endTimeInMinute: Int32?

            public var startTimeInMinute: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dayInWeek != nil {
                    map["dayInWeek"] = self.dayInWeek!
                }
                if self.endTimeInMinute != nil {
                    map["endTimeInMinute"] = self.endTimeInMinute!
                }
                if self.startTimeInMinute != nil {
                    map["startTimeInMinute"] = self.startTimeInMinute!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dayInWeek"] as? [Int32] {
                    self.dayInWeek = value
                }
                if let value = dict["endTimeInMinute"] as? Int32 {
                    self.endTimeInMinute = value
                }
                if let value = dict["startTimeInMinute"] as? Int32 {
                    self.startTimeInMinute = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var channels: [NotifyStrategyForView.Routes.Channels]?

        public var effectTimeRange: NotifyStrategyForView.Routes.EffectTimeRange?

        public var filterSetting: FilterSetting?

        public var severities: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.effectTimeRange?.validate()
            try self.filterSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["channels"] = tmp
            }
            if self.effectTimeRange != nil {
                map["effectTimeRange"] = self.effectTimeRange?.toMap()
            }
            if self.filterSetting != nil {
                map["filterSetting"] = self.filterSetting?.toMap()
            }
            if self.severities != nil {
                map["severities"] = self.severities!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["channels"] as? [Any?] {
                var tmp : [NotifyStrategyForView.Routes.Channels] = []
                for v in value {
                    if v != nil {
                        var model = NotifyStrategyForView.Routes.Channels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.channels = tmp
            }
            if let value = dict["effectTimeRange"] as? [String: Any?] {
                var model = NotifyStrategyForView.Routes.EffectTimeRange()
                model.fromMap(value)
                self.effectTimeRange = model
            }
            if let value = dict["filterSetting"] as? [String: Any?] {
                var model = FilterSetting()
                model.fromMap(value)
                self.filterSetting = model
            }
            if let value = dict["severities"] as? [String] {
                self.severities = value
            }
        }
    }
    public var createTime: String?

    public var customTemplateEntries: [NotifyStrategyForView.CustomTemplateEntries]?

    public var description_: String?

    public var enable: Bool?

    public var groupingSetting: NotifyStrategyForView.GroupingSetting?

    public var ignoreRestoredNotification: Bool?

    public var notifyStrategyId: String?

    public var notifyStrategyName: String?

    public var routes: [NotifyStrategyForView.Routes]?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.customTemplateEntries != nil {
            var tmp : [Any] = []
            for k in self.customTemplateEntries! {
                tmp.append(k.toMap())
            }
            map["customTemplateEntries"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.groupingSetting != nil {
            map["groupingSetting"] = self.groupingSetting?.toMap()
        }
        if self.ignoreRestoredNotification != nil {
            map["ignoreRestoredNotification"] = self.ignoreRestoredNotification!
        }
        if self.notifyStrategyId != nil {
            map["notifyStrategyId"] = self.notifyStrategyId!
        }
        if self.notifyStrategyName != nil {
            map["notifyStrategyName"] = self.notifyStrategyName!
        }
        if self.routes != nil {
            var tmp : [Any] = []
            for k in self.routes! {
                tmp.append(k.toMap())
            }
            map["routes"] = tmp
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["customTemplateEntries"] as? [Any?] {
            var tmp : [NotifyStrategyForView.CustomTemplateEntries] = []
            for v in value {
                if v != nil {
                    var model = NotifyStrategyForView.CustomTemplateEntries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customTemplateEntries = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["groupingSetting"] as? [String: Any?] {
            var model = NotifyStrategyForView.GroupingSetting()
            model.fromMap(value)
            self.groupingSetting = model
        }
        if let value = dict["ignoreRestoredNotification"] as? Bool {
            self.ignoreRestoredNotification = value
        }
        if let value = dict["notifyStrategyId"] as? String {
            self.notifyStrategyId = value
        }
        if let value = dict["notifyStrategyName"] as? String {
            self.notifyStrategyName = value
        }
        if let value = dict["routes"] as? [Any?] {
            var tmp : [NotifyStrategyForView.Routes] = []
            for v in value {
                if v != nil {
                    var model = NotifyStrategyForView.Routes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.routes = tmp
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class PrometheusManagedInstance : Tea.TeaModel {
    public var createTime: String?

    public var instanceType: String?

    public var prometheusInstanceId: String?

    public var prometheusInstanceName: String?

    public var regionId: String?

    public var status: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.prometheusInstanceId != nil {
            map["prometheusInstanceId"] = self.prometheusInstanceId!
        }
        if self.prometheusInstanceName != nil {
            map["prometheusInstanceName"] = self.prometheusInstanceName!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["instanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["prometheusInstanceId"] as? String {
            self.prometheusInstanceId = value
        }
        if let value = dict["prometheusInstanceName"] as? String {
            self.prometheusInstanceName = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class RumDnsResponse : Tea.TeaModel {
    public var domain: String?

    public var message: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["result"] as? Bool {
            self.result = value
        }
    }
}

public class SubscriptionForModify : Tea.TeaModel {
    public class PushingSetting : Tea.TeaModel {
        public var alertActionIds: [String]?

        public var responsePlanId: String?

        public var restoreActionIds: [String]?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertActionIds != nil {
                map["alertActionIds"] = self.alertActionIds!
            }
            if self.responsePlanId != nil {
                map["responsePlanId"] = self.responsePlanId!
            }
            if self.restoreActionIds != nil {
                map["restoreActionIds"] = self.restoreActionIds!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertActionIds"] as? [String] {
                self.alertActionIds = value
            }
            if let value = dict["responsePlanId"] as? String {
                self.responsePlanId = value
            }
            if let value = dict["restoreActionIds"] as? [String] {
                self.restoreActionIds = value
            }
            if let value = dict["templateUuid"] as? String {
                self.templateUuid = value
            }
        }
    }
    public var description_: String?

    public var filterSetting: FilterSetting?

    public var notifyStrategyId: String?

    public var pushingSetting: SubscriptionForModify.PushingSetting?

    public var subscriptionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
        try self.pushingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.notifyStrategyId != nil {
            map["notifyStrategyId"] = self.notifyStrategyId!
        }
        if self.pushingSetting != nil {
            map["pushingSetting"] = self.pushingSetting?.toMap()
        }
        if self.subscriptionName != nil {
            map["subscriptionName"] = self.subscriptionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["notifyStrategyId"] as? String {
            self.notifyStrategyId = value
        }
        if let value = dict["pushingSetting"] as? [String: Any?] {
            var model = SubscriptionForModify.PushingSetting()
            model.fromMap(value)
            self.pushingSetting = model
        }
        if let value = dict["subscriptionName"] as? String {
            self.subscriptionName = value
        }
    }
}

public class SubscriptionForView : Tea.TeaModel {
    public class PushingSetting : Tea.TeaModel {
        public var alertActionIds: [String]?

        public var responsePlanId: String?

        public var restoreActionIds: [String]?

        public var templateUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertActionIds != nil {
                map["alertActionIds"] = self.alertActionIds!
            }
            if self.responsePlanId != nil {
                map["responsePlanId"] = self.responsePlanId!
            }
            if self.restoreActionIds != nil {
                map["restoreActionIds"] = self.restoreActionIds!
            }
            if self.templateUuid != nil {
                map["templateUuid"] = self.templateUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertActionIds"] as? [String] {
                self.alertActionIds = value
            }
            if let value = dict["responsePlanId"] as? String {
                self.responsePlanId = value
            }
            if let value = dict["restoreActionIds"] as? [String] {
                self.restoreActionIds = value
            }
            if let value = dict["templateUuid"] as? String {
                self.templateUuid = value
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var enable: Bool?

    public var filterSetting: FilterSetting?

    public var notifyStrategyId: String?

    public var pushingSetting: SubscriptionForView.PushingSetting?

    public var subscriptionId: String?

    public var subscriptionName: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
        try self.pushingSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.notifyStrategyId != nil {
            map["notifyStrategyId"] = self.notifyStrategyId!
        }
        if self.pushingSetting != nil {
            map["pushingSetting"] = self.pushingSetting?.toMap()
        }
        if self.subscriptionId != nil {
            map["subscriptionId"] = self.subscriptionId!
        }
        if self.subscriptionName != nil {
            map["subscriptionName"] = self.subscriptionName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["notifyStrategyId"] as? String {
            self.notifyStrategyId = value
        }
        if let value = dict["pushingSetting"] as? [String: Any?] {
            var model = SubscriptionForView.PushingSetting()
            model.fromMap(value)
            self.pushingSetting = model
        }
        if let value = dict["subscriptionId"] as? String {
            self.subscriptionId = value
        }
        if let value = dict["subscriptionName"] as? String {
            self.subscriptionName = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class TransformAction : Tea.TeaModel {
    public var filterSetting: FilterSetting?

    public var labelKey: String?

    public var mapping: [String: String]?

    public var regExp: String?

    public var source: String?

    public var target: String?

    public var type: String?

    public var value: String?

    public var variable: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.labelKey != nil {
            map["labelKey"] = self.labelKey!
        }
        if self.mapping != nil {
            map["mapping"] = self.mapping!
        }
        if self.regExp != nil {
            map["regExp"] = self.regExp!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.variable != nil {
            map["variable"] = self.variable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["labelKey"] as? String {
            self.labelKey = value
        }
        if let value = dict["mapping"] as? [String: String] {
            self.mapping = value
        }
        if let value = dict["regExp"] as? String {
            self.regExp = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["target"] as? String {
            self.target = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
        if let value = dict["variable"] as? String {
            self.variable = value
        }
    }
}

public class TransformerForModify : Tea.TeaModel {
    public var actions: [TransformAction]?

    public var description_: String?

    public var filterSetting: FilterSetting?

    public var quitAfterMatch: Bool?

    public var sortId: Int32?

    public var transformerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["actions"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.quitAfterMatch != nil {
            map["quitAfterMatch"] = self.quitAfterMatch!
        }
        if self.sortId != nil {
            map["sortId"] = self.sortId!
        }
        if self.transformerName != nil {
            map["transformerName"] = self.transformerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actions"] as? [Any?] {
            var tmp : [TransformAction] = []
            for v in value {
                if v != nil {
                    var model = TransformAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["quitAfterMatch"] as? Bool {
            self.quitAfterMatch = value
        }
        if let value = dict["sortId"] as? Int32 {
            self.sortId = value
        }
        if let value = dict["transformerName"] as? String {
            self.transformerName = value
        }
    }
}

public class TransformerForView : Tea.TeaModel {
    public var actions: [TransformAction]?

    public var createTime: String?

    public var description_: String?

    public var enable: Bool?

    public var filterSetting: FilterSetting?

    public var quitAfterMatch: Bool?

    public var sortId: Int32?

    public var transformerId: String?

    public var transformerName: String?

    public var updateTime: String?

    public var userId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filterSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["actions"] = tmp
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.filterSetting != nil {
            map["filterSetting"] = self.filterSetting?.toMap()
        }
        if self.quitAfterMatch != nil {
            map["quitAfterMatch"] = self.quitAfterMatch!
        }
        if self.sortId != nil {
            map["sortId"] = self.sortId!
        }
        if self.transformerId != nil {
            map["transformerId"] = self.transformerId!
        }
        if self.transformerName != nil {
            map["transformerName"] = self.transformerName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actions"] as? [Any?] {
            var tmp : [TransformAction] = []
            for v in value {
                if v != nil {
                    var model = TransformAction()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["filterSetting"] as? [String: Any?] {
            var model = FilterSetting()
            model.fromMap(value)
            self.filterSetting = model
        }
        if let value = dict["quitAfterMatch"] as? Bool {
            self.quitAfterMatch = value
        }
        if let value = dict["sortId"] as? Int32 {
            self.sortId = value
        }
        if let value = dict["transformerId"] as? String {
            self.transformerId = value
        }
        if let value = dict["transformerName"] as? String {
            self.transformerName = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateEntityStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class CreateEntityStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEntityStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateEntityStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePrometheusInstanceRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public var value: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var archiveDuration: Int32?

    public var authFreeReadPolicy: String?

    public var authFreeWritePolicy: String?

    public var enableAuthFreeRead: Bool?

    public var enableAuthFreeWrite: Bool?

    public var enableAuthToken: Bool?

    public var paymentType: String?

    public var prometheusInstanceName: String?

    public var status: String?

    public var storageDuration: Int32?

    public var tags: [CreatePrometheusInstanceRequest.Tags]?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.archiveDuration != nil {
            map["archiveDuration"] = self.archiveDuration!
        }
        if self.authFreeReadPolicy != nil {
            map["authFreeReadPolicy"] = self.authFreeReadPolicy!
        }
        if self.authFreeWritePolicy != nil {
            map["authFreeWritePolicy"] = self.authFreeWritePolicy!
        }
        if self.enableAuthFreeRead != nil {
            map["enableAuthFreeRead"] = self.enableAuthFreeRead!
        }
        if self.enableAuthFreeWrite != nil {
            map["enableAuthFreeWrite"] = self.enableAuthFreeWrite!
        }
        if self.enableAuthToken != nil {
            map["enableAuthToken"] = self.enableAuthToken!
        }
        if self.paymentType != nil {
            map["paymentType"] = self.paymentType!
        }
        if self.prometheusInstanceName != nil {
            map["prometheusInstanceName"] = self.prometheusInstanceName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.storageDuration != nil {
            map["storageDuration"] = self.storageDuration!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["archiveDuration"] as? Int32 {
            self.archiveDuration = value
        }
        if let value = dict["authFreeReadPolicy"] as? String {
            self.authFreeReadPolicy = value
        }
        if let value = dict["authFreeWritePolicy"] as? String {
            self.authFreeWritePolicy = value
        }
        if let value = dict["enableAuthFreeRead"] as? Bool {
            self.enableAuthFreeRead = value
        }
        if let value = dict["enableAuthFreeWrite"] as? Bool {
            self.enableAuthFreeWrite = value
        }
        if let value = dict["enableAuthToken"] as? Bool {
            self.enableAuthToken = value
        }
        if let value = dict["paymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["prometheusInstanceName"] as? String {
            self.prometheusInstanceName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["storageDuration"] as? Int32 {
            self.storageDuration = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [CreatePrometheusInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreatePrometheusInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreatePrometheusInstanceResponseBody : Tea.TeaModel {
    public var prometheusInstanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prometheusInstanceId != nil {
            map["prometheusInstanceId"] = self.prometheusInstanceId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["prometheusInstanceId"] as? String {
            self.prometheusInstanceId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePrometheusInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrometheusInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePrometheusInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public var attributes: String?

    public var description_: String?

    public var displayName: String?

    public var pid: String?

    public var serviceName: String?

    public var serviceStatus: String?

    public var serviceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.pid != nil {
            map["pid"] = self.pid!
        }
        if self.serviceName != nil {
            map["serviceName"] = self.serviceName!
        }
        if self.serviceStatus != nil {
            map["serviceStatus"] = self.serviceStatus!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? String {
            self.attributes = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["pid"] as? String {
            self.pid = value
        }
        if let value = dict["serviceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["serviceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public var pid: String?

    public var requestId: String?

    public var serviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pid != nil {
            map["pid"] = self.pid!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pid"] as? String {
            self.pid = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTicketRequest : Tea.TeaModel {
    public var accessTokenExpirationTime: Int64?

    public var expirationTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenExpirationTime != nil {
            map["accessTokenExpirationTime"] = self.accessTokenExpirationTime!
        }
        if self.expirationTime != nil {
            map["expirationTime"] = self.expirationTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessTokenExpirationTime"] as? Int64 {
            self.accessTokenExpirationTime = value
        }
        if let value = dict["expirationTime"] as? Int64 {
            self.expirationTime = value
        }
    }
}

public class CreateTicketResponseBody : Tea.TeaModel {
    public var ticket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ticket != nil {
            map["ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ticket"] as? String {
            self.ticket = value
        }
    }
}

public class CreateTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUmodelRequest : Tea.TeaModel {
    public class CommonSchemaRef : Tea.TeaModel {
        public var group: String?

        public var items: [String]?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                map["group"] = self.group!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["group"] as? String {
                self.group = value
            }
            if let value = dict["items"] as? [String] {
                self.items = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var commonSchemaRef: [CreateUmodelRequest.CommonSchemaRef]?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonSchemaRef != nil {
            var tmp : [Any] = []
            for k in self.commonSchemaRef! {
                tmp.append(k.toMap())
            }
            map["commonSchemaRef"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonSchemaRef"] as? [Any?] {
            var tmp : [CreateUmodelRequest.CommonSchemaRef] = []
            for v in value {
                if v != nil {
                    var model = CreateUmodelRequest.CommonSchemaRef()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commonSchemaRef = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class CreateUmodelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class CreateUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUmodelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEntityStoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEntityStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEntityStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEntityStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUmodelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUmodelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUmodelDataRequest : Tea.TeaModel {
    public var domain: String?

    public var kind: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class DeleteUmodelDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteUmodelDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUmodelDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUmodelDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEntityStoreResponseBody : Tea.TeaModel {
    public var regionId: String?

    public var requestId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class GetEntityStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEntityStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEntityStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEntityStoreDataHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var acceptEncoding: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.acceptEncoding != nil {
            map["acceptEncoding"] = self.acceptEncoding!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["acceptEncoding"] as? String {
            self.acceptEncoding = value
        }
    }
}

public class GetEntityStoreDataRequest : Tea.TeaModel {
    public var from: Int32?

    public var query: String?

    public var to: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["from"] as? Int32 {
            self.from = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["to"] as? Int32 {
            self.to = value
        }
    }
}

public class GetEntityStoreDataResponseBody : Tea.TeaModel {
    public var data: [[String]]?

    public var header: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.header != nil {
            map["header"] = self.header!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [[String]] {
            self.data = value
        }
        if let value = dict["header"] as? [String] {
            self.header = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetEntityStoreDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEntityStoreDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEntityStoreDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceResponseBody : Tea.TeaModel {
    public class Service : Tea.TeaModel {
        public var attributes: String?

        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var pid: String?

        public var regionId: String?

        public var serviceId: String?

        public var serviceName: String?

        public var serviceStatus: String?

        public var serviceType: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["attributes"] = self.attributes!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.pid != nil {
                map["pid"] = self.pid!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.serviceStatus != nil {
                map["serviceStatus"] = self.serviceStatus!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.workspace != nil {
                map["workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["pid"] as? String {
                self.pid = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["serviceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["workspace"] as? String {
                self.workspace = value
            }
        }
    }
    public var requestId: String?

    public var service: GetServiceResponseBody.Service?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.service?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.service != nil {
            map["service"] = self.service?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["service"] as? [String: Any?] {
            var model = GetServiceResponseBody.Service()
            model.fromMap(value)
            self.service = model
        }
    }
}

public class GetServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceObservabilityResponseBody : Tea.TeaModel {
    public class EntryPointInfo : Tea.TeaModel {
        public var authToken: String?

        public var privateDomain: String?

        public var project: String?

        public var publicDomain: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authToken != nil {
                map["authToken"] = self.authToken!
            }
            if self.privateDomain != nil {
                map["privateDomain"] = self.privateDomain!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.publicDomain != nil {
                map["publicDomain"] = self.publicDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authToken"] as? String {
                self.authToken = value
            }
            if let value = dict["privateDomain"] as? String {
                self.privateDomain = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
            if let value = dict["publicDomain"] as? String {
                self.publicDomain = value
            }
        }
    }
    public var entryPointInfo: GetServiceObservabilityResponseBody.EntryPointInfo?

    public var feeType: String?

    public var quotas: [String: String]?

    public var regionId: String?

    public var requestId: String?

    public var settings: [String: String]?

    public var status: String?

    public var type: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.entryPointInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entryPointInfo != nil {
            map["entryPointInfo"] = self.entryPointInfo?.toMap()
        }
        if self.feeType != nil {
            map["feeType"] = self.feeType!
        }
        if self.quotas != nil {
            map["quotas"] = self.quotas!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.settings != nil {
            map["settings"] = self.settings!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["entryPointInfo"] as? [String: Any?] {
            var model = GetServiceObservabilityResponseBody.EntryPointInfo()
            model.fromMap(value)
            self.entryPointInfo = model
        }
        if let value = dict["feeType"] as? String {
            self.feeType = value
        }
        if let value = dict["quotas"] as? [String: String] {
            self.quotas = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["settings"] as? [String: String] {
            self.settings = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetServiceObservabilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceObservabilityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceObservabilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUmodelResponseBody : Tea.TeaModel {
    public class CommonSchemaRef : Tea.TeaModel {
        public var group: String?

        public var items: [String]?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                map["group"] = self.group!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["group"] as? String {
                self.group = value
            }
            if let value = dict["items"] as? [String] {
                self.items = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var commonSchemaRef: [GetUmodelResponseBody.CommonSchemaRef]?

    public var description_: String?

    public var regionId: String?

    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonSchemaRef != nil {
            var tmp : [Any] = []
            for k in self.commonSchemaRef! {
                tmp.append(k.toMap())
            }
            map["commonSchemaRef"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonSchemaRef"] as? [Any?] {
            var tmp : [GetUmodelResponseBody.CommonSchemaRef] = []
            for v in value {
                if v != nil {
                    var model = GetUmodelResponseBody.CommonSchemaRef()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commonSchemaRef = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class GetUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUmodelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUmodelDataRequest : Tea.TeaModel {
    public var content: Any?

    public var method: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? Any {
            self.content = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
    }
}

public class GetUmodelDataResponseBody : Tea.TeaModel {
    public class Errors : Tea.TeaModel {
        public var message: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var errors: [GetUmodelDataResponseBody.Errors]?

    public var links: [Any]?

    public var nodes: [Any]?

    public var requestId: String?

    public var totalLinksCount: Int32?

    public var totalNodesCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["errors"] = tmp
        }
        if self.links != nil {
            map["links"] = self.links!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalLinksCount != nil {
            map["totalLinksCount"] = self.totalLinksCount!
        }
        if self.totalNodesCount != nil {
            map["totalNodesCount"] = self.totalNodesCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errors"] as? [Any?] {
            var tmp : [GetUmodelDataResponseBody.Errors] = []
            for v in value {
                if v != nil {
                    var model = GetUmodelDataResponseBody.Errors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.errors = tmp
        }
        if let value = dict["links"] as? [Any] {
            self.links = value
        }
        if let value = dict["nodes"] as? [Any] {
            self.nodes = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalLinksCount"] as? Int32 {
            self.totalLinksCount = value
        }
        if let value = dict["totalNodesCount"] as? Int32 {
            self.totalNodesCount = value
        }
    }
}

public class GetUmodelDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUmodelDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUmodelDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var displayName: String?

    public var lastModifyTime: String?

    public var regionId: String?

    public var requestId: String?

    public var slsProject: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.lastModifyTime != nil {
            map["lastModifyTime"] = self.lastModifyTime!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["lastModifyTime"] as? String {
            self.lastModifyTime = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["slsProject"] as? String {
            self.slsProject = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlertActionsRequest : Tea.TeaModel {
    public var alertActionIds: [String]?

    public var alertActionName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertActionIds != nil {
            map["alertActionIds"] = self.alertActionIds!
        }
        if self.alertActionName != nil {
            map["alertActionName"] = self.alertActionName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertActionIds"] as? [String] {
            self.alertActionIds = value
        }
        if let value = dict["alertActionName"] as? String {
            self.alertActionName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListAlertActionsShrinkRequest : Tea.TeaModel {
    public var alertActionIdsShrink: String?

    public var alertActionName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertActionIdsShrink != nil {
            map["alertActionIds"] = self.alertActionIdsShrink!
        }
        if self.alertActionName != nil {
            map["alertActionName"] = self.alertActionName!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertActionIds"] as? String {
            self.alertActionIdsShrink = value
        }
        if let value = dict["alertActionName"] as? String {
            self.alertActionName = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ListAlertActionsResponseBody : Tea.TeaModel {
    public class AlertActions : Tea.TeaModel {
        public class EbParam : Tea.TeaModel {
            public var ebSource: String?

            public var eventBusName: String?

            public var regionId: String?

            public var subject: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ebSource != nil {
                    map["ebSource"] = self.ebSource!
                }
                if self.eventBusName != nil {
                    map["eventBusName"] = self.eventBusName!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.subject != nil {
                    map["subject"] = self.subject!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ebSource"] as? String {
                    self.ebSource = value
                }
                if let value = dict["eventBusName"] as? String {
                    self.eventBusName = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["subject"] as? String {
                    self.subject = value
                }
            }
        }
        public class EssParam : Tea.TeaModel {
            public var essGroupId: String?

            public var essRuleId: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.essGroupId != nil {
                    map["essGroupId"] = self.essGroupId!
                }
                if self.essRuleId != nil {
                    map["essRuleId"] = self.essRuleId!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["essGroupId"] as? String {
                    self.essGroupId = value
                }
                if let value = dict["essRuleId"] as? String {
                    self.essRuleId = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class Fc3Param : Tea.TeaModel {
            public var function: String?

            public var qualifier: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.function != nil {
                    map["function"] = self.function!
                }
                if self.qualifier != nil {
                    map["qualifier"] = self.qualifier!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["function"] as? String {
                    self.function = value
                }
                if let value = dict["qualifier"] as? String {
                    self.qualifier = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class FcParam : Tea.TeaModel {
            public var function: String?

            public var regionId: String?

            public var service: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.function != nil {
                    map["function"] = self.function!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                if self.service != nil {
                    map["service"] = self.service!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["function"] as? String {
                    self.function = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["service"] as? String {
                    self.service = value
                }
            }
        }
        public class MnsParam : Tea.TeaModel {
            public var mnsType: String?

            public var name: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mnsType != nil {
                    map["mnsType"] = self.mnsType!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mnsType"] as? String {
                    self.mnsType = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class PagerDutyParam : Tea.TeaModel {
            public var key: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class SlsParam : Tea.TeaModel {
            public var logstore: String?

            public var project: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logstore != nil {
                    map["logstore"] = self.logstore!
                }
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["logstore"] as? String {
                    self.logstore = value
                }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class WebhookParam : Tea.TeaModel {
            public var contentType: String?

            public var headers: [String: String]?

            public var method: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contentType != nil {
                    map["contentType"] = self.contentType!
                }
                if self.headers != nil {
                    map["headers"] = self.headers!
                }
                if self.method != nil {
                    map["method"] = self.method!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["contentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["headers"] as? [String: String] {
                    self.headers = value
                }
                if let value = dict["method"] as? String {
                    self.method = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var alertActionId: String?

        public var alertActionName: String?

        public var ebParam: ListAlertActionsResponseBody.AlertActions.EbParam?

        public var essParam: ListAlertActionsResponseBody.AlertActions.EssParam?

        public var fc3Param: ListAlertActionsResponseBody.AlertActions.Fc3Param?

        public var fcParam: ListAlertActionsResponseBody.AlertActions.FcParam?

        public var mnsParam: ListAlertActionsResponseBody.AlertActions.MnsParam?

        public var pagerDutyParam: ListAlertActionsResponseBody.AlertActions.PagerDutyParam?

        public var slsParam: ListAlertActionsResponseBody.AlertActions.SlsParam?

        public var type: String?

        public var webhookParam: ListAlertActionsResponseBody.AlertActions.WebhookParam?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ebParam?.validate()
            try self.essParam?.validate()
            try self.fc3Param?.validate()
            try self.fcParam?.validate()
            try self.mnsParam?.validate()
            try self.pagerDutyParam?.validate()
            try self.slsParam?.validate()
            try self.webhookParam?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertActionId != nil {
                map["alertActionId"] = self.alertActionId!
            }
            if self.alertActionName != nil {
                map["alertActionName"] = self.alertActionName!
            }
            if self.ebParam != nil {
                map["ebParam"] = self.ebParam?.toMap()
            }
            if self.essParam != nil {
                map["essParam"] = self.essParam?.toMap()
            }
            if self.fc3Param != nil {
                map["fc3Param"] = self.fc3Param?.toMap()
            }
            if self.fcParam != nil {
                map["fcParam"] = self.fcParam?.toMap()
            }
            if self.mnsParam != nil {
                map["mnsParam"] = self.mnsParam?.toMap()
            }
            if self.pagerDutyParam != nil {
                map["pagerDutyParam"] = self.pagerDutyParam?.toMap()
            }
            if self.slsParam != nil {
                map["slsParam"] = self.slsParam?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.webhookParam != nil {
                map["webhookParam"] = self.webhookParam?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alertActionId"] as? String {
                self.alertActionId = value
            }
            if let value = dict["alertActionName"] as? String {
                self.alertActionName = value
            }
            if let value = dict["ebParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.EbParam()
                model.fromMap(value)
                self.ebParam = model
            }
            if let value = dict["essParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.EssParam()
                model.fromMap(value)
                self.essParam = model
            }
            if let value = dict["fc3Param"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.Fc3Param()
                model.fromMap(value)
                self.fc3Param = model
            }
            if let value = dict["fcParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.FcParam()
                model.fromMap(value)
                self.fcParam = model
            }
            if let value = dict["mnsParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.MnsParam()
                model.fromMap(value)
                self.mnsParam = model
            }
            if let value = dict["pagerDutyParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.PagerDutyParam()
                model.fromMap(value)
                self.pagerDutyParam = model
            }
            if let value = dict["slsParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.SlsParam()
                model.fromMap(value)
                self.slsParam = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["webhookParam"] as? [String: Any?] {
                var model = ListAlertActionsResponseBody.AlertActions.WebhookParam()
                model.fromMap(value)
                self.webhookParam = model
            }
        }
    }
    public var alertActions: [ListAlertActionsResponseBody.AlertActions]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertActions != nil {
            var tmp : [Any] = []
            for k in self.alertActions! {
                tmp.append(k.toMap())
            }
            map["alertActions"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alertActions"] as? [Any?] {
            var tmp : [ListAlertActionsResponseBody.AlertActions] = []
            for v in value {
                if v != nil {
                    var model = ListAlertActionsResponseBody.AlertActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alertActions = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAlertActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertActionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAlertActionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var serviceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.serviceType != nil {
            map["serviceType"] = self.serviceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["serviceType"] as? String {
            self.serviceType = value
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public var attributes: String?

        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var pid: String?

        public var serviceId: String?

        public var serviceName: String?

        public var serviceStatus: String?

        public var serviceType: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["attributes"] = self.attributes!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.pid != nil {
                map["pid"] = self.pid!
            }
            if self.serviceId != nil {
                map["serviceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.serviceStatus != nil {
                map["serviceStatus"] = self.serviceStatus!
            }
            if self.serviceType != nil {
                map["serviceType"] = self.serviceType!
            }
            if self.workspace != nil {
                map["workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["pid"] as? String {
                self.pid = value
            }
            if let value = dict["serviceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["serviceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["serviceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["workspace"] as? String {
                self.workspace = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var services: [ListServicesResponseBody.Services]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["services"] as? [Any?] {
            var tmp : [ListServicesResponseBody.Services] = []
            for v in value {
                if v != nil {
                    var model = ListServicesResponseBody.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var workspaceName: String?

    public var workspaceNameList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        if self.workspaceNameList != nil {
            map["workspaceNameList"] = self.workspaceNameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
        if let value = dict["workspaceNameList"] as? [String] {
            self.workspaceNameList = value
        }
    }
}

public class ListWorkspacesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var region: String?

    public var workspaceName: String?

    public var workspaceNameListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        if self.workspaceNameListShrink != nil {
            map["workspaceNameList"] = self.workspaceNameListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
        if let value = dict["workspaceNameList"] as? String {
            self.workspaceNameListShrink = value
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var lastModifyTime: String?

        public var regionId: String?

        public var slsProject: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.lastModifyTime != nil {
                map["lastModifyTime"] = self.lastModifyTime!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.slsProject != nil {
                map["slsProject"] = self.slsProject!
            }
            if self.workspaceName != nil {
                map["workspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["lastModifyTime"] as? String {
                self.lastModifyTime = value
            }
            if let value = dict["regionId"] as? String {
                self.regionId = value
            }
            if let value = dict["slsProject"] as? String {
                self.slsProject = value
            }
            if let value = dict["workspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var total: Int32?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
        if let value = dict["workspaces"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.Workspaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workspaces = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListWorkspacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var slsProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["slsProject"] as? String {
            self.slsProject = value
        }
    }
}

public class PutWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceName != nil {
            map["workspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class PutWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceRequest : Tea.TeaModel {
    public var attributes: String?

    public var description_: String?

    public var displayName: String?

    public var serviceStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.serviceStatus != nil {
            map["serviceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? String {
            self.attributes = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["serviceStatus"] as? String {
            self.serviceStatus = value
        }
    }
}

public class UpdateServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["serviceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["serviceId"] as? String {
            self.serviceId = value
        }
    }
}

public class UpdateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUmodelRequest : Tea.TeaModel {
    public class CommonSchemaRef : Tea.TeaModel {
        public var group: String?

        public var items: [String]?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                map["group"] = self.group!
            }
            if self.items != nil {
                map["items"] = self.items!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["group"] as? String {
                self.group = value
            }
            if let value = dict["items"] as? [String] {
                self.items = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var commonSchemaRef: [UpdateUmodelRequest.CommonSchemaRef]?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonSchemaRef != nil {
            var tmp : [Any] = []
            for k in self.commonSchemaRef! {
                tmp.append(k.toMap())
            }
            map["commonSchemaRef"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonSchemaRef"] as? [Any?] {
            var tmp : [UpdateUmodelRequest.CommonSchemaRef] = []
            for v in value {
                if v != nil {
                    var model = UpdateUmodelRequest.CommonSchemaRef()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commonSchemaRef = tmp
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateUmodelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workspace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["workspace"] as? String {
            self.workspace = value
        }
    }
}

public class UpdateUmodelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUmodelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUmodelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpsertUmodelDataRequest : Tea.TeaModel {
    public var elements: [Any]?

    public var method: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elements != nil {
            map["elements"] = self.elements!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["elements"] as? [Any] {
            self.elements = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
    }
}

public class UpsertUmodelDataResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpsertUmodelDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpsertUmodelDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpsertUmodelDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
